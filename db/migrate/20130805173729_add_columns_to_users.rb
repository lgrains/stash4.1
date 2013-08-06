class AddColumnsToUsers < ActiveRecord::Migration
  def change
    change_table(:users) do |t|
      t.string  :first_name
      t.string  :middle_initial
      t.string  :last_name
      t.string  :phone_number
      t.boolean :is_admin, default: false
    end
  end
end
