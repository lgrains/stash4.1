require 'faker'

Fabricator(:address) do
  line_1    Faker::Address.street_address
  city      Faker::Address.city
  state     Faker::Address.state_abbr
  zip_code  Faker::Address.zip_code

end
