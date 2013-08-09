class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.integer   :user_id, :null => false
      t.string    :status
      t.string    :image_url
      t.string    :description
      t.float     :length
      t.float     :width
      t.boolean   :is_treated
      t.string    :treatment_method
      t.string    :manufacturer
      t.string    :fabric_line_name
      t.string    :fabric_designer
      t.float     :price

      t.timestamps
    end
  end
end
