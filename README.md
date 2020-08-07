# README

To run application:

1. `bundle install`
2. `yarn`
3. first run migrations: `rake db:migrate`
4. run server: `rails s`
5. Open browser at: `http://localhost:3000`

External dependencies:
1. yarn: package manager
2. geolocation gem to add latitude and longitude to address upon cretion
3. bootstrap for html and css styling
4. devise for user creation and authentication

Note: I assumed users are only able to see the addresses they have created,
that is why there is a relation of: `user has many addresses`



