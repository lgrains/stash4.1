class CreateColors < ActiveRecord::Migration
  def change
    create_table :colors do |t|
      t.string  :name
      t.string  :color_group
      t.string  :value

      t.timestamps
    end
  end
end
