class Listing < ActiveRecord::Base
  belongs_to :user
  has_one :listing_image


end
