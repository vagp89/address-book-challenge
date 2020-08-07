# README

To run application:

1. `bundle install`
1. first run migrations: `rake db:migrate`
2. run server: `rails s`
3. Open browser at: `http://localhost:3000`

External dependencies:
geolocation gem to add latitude and longitude to address upon cretion
bootstrap for html and css styling
devise for user creation and authentication

Note: I assume users are only able to see the addresses they are created
that is why there is a relation of: `user has many addresses`



