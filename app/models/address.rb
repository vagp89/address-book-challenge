class Address < ApplicationRecord
 geocoded_by :address
 after_validation :geocode, if: :will_save_change_to_address?
  validates_presence_of :address
  validates_presence_of :latitude
  validates_presence_of :longitude
end

