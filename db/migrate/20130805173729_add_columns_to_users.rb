class AddColumnsToUsers < ActiveRecord::Migration
  def change
    change_table(:users) do |t|
      t.string :email
      t.string  :first_name
      t.string  :middle_initial
      t.string  :last_name

    end
  end
end
