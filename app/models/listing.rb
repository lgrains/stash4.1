class Listing < ActiveRecord::Base
  belongs_to :user
  # validates_presence_of :image
  mount_uploader :image, ImageUploader


end
