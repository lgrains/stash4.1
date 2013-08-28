class CreateListings < ActiveRecord::Migration
  def change
    # execute "create extension hstore"
    create_table :listings do |t|
      t.integer   :user_id
      t.string    :name
      t.string    :listing_type, default: 'offer'
      t.string    :status         # active, pending, exchanged, closed
      t.string    :description
      t.float     :length
      t.string    :length_units
      t.float     :width
      t.string    :width_units
      # t.boolean   :is_treated these will be included in properties
      # t.string    :treatment_method
      # t.string    :manufacturer
      # t.string    :fabric_line_name
      # t.string    :fabric_designer
      t.float     :price
      t.string    :colors, array: true
      t.hstore    :properties

      t.timestamps
    end
  end
end
