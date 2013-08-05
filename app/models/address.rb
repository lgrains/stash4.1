class Address < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :line_1
  validates_presence_of :city
  validates_presence_of :state
  validates_presence_of :zip_code
end
