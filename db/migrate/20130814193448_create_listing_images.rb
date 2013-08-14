class CreateListingImages < ActiveRecord::Migration
  def change
    create_table :listing_images do |t|
      t.integer :listing_id
      t.string  :original_filename
      t.string  :name
      t.string  :content_type
      t.binary  :data, limit: 2.megabyte

      t.timestamps
    end
  end
end
