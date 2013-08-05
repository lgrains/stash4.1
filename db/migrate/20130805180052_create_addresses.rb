class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string  :address_type, :default => :primary
      t.string  :line_1
      t.string  :line_2
      t.string  :city
      t.string  :state
      t.string  :zip_code

      t.timestamps
    end
  end
end
