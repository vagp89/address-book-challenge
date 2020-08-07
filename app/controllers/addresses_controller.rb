# Address controller. Handles index and form views.
# Creates new address and also handles showing all addresses to user.s
# A user can create many addresses, has many relation.
# With this relation users are only permitted to see the addresses that they created
# not the ones from other users
#I use Strong  Params because they prevents assigning request parameters to objects unless they have been explicitly permitted.

class AddressesController < ApplicationController
  def index
    @address = Address.new
    @addresses = current_user.addresses
  end
  def new
    @address = Address.new
  end

  def create
    @address = Address.new(address_params)
    current_user.addresses.push @address
    current_user.save
    redirect_to addresses_path
  end

  private

  def address_params
    params.require(:address).permit(:address, :latitude, :longitude)
  end
end

