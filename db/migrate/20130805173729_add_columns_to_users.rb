class AddColumnsToUsers < ActiveRecord::Migration
  def change
    change_table(:users) do |t|
      t.string  :first_name
      t.string  :middle_initial
      t.string  :last_name
      t.string  :phone_number
      t.boolean :is_admin, default: false
      t.string  :line_1
      t.string  :line_2
      t.string  :city
      t.string  :state
      t.string  :zip_code
    end
  end
end
