class AddUserIdToAddress < ActiveRecord::Migration
  def change
    change_table :addresses do |t|
      t.integer :user_id
    end
  end
end
