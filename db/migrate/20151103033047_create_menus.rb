class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :name
      t.integer :items
      t.string :description

      t.timestamps null: false
    end
  end
end
