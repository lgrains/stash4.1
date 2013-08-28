require 'faker'

Fabricator(:user) do
  email Faker::Internet.email
  password 'changeme'
  password_confirmation 'changeme'
  role 'registered'
end