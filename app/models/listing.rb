class Listing < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :image
  validates_presence_of :length
  validates_presence_of :width

  mount_uploader :image, ImageUploader


end
