class CreateColorsListings < ActiveRecord::Migration
  def change
    create_table :colors_listings do |t|
      t.integer :color_id
      t.integer :listing_id
    end
  end
end
