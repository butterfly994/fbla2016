class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :menu
      t.string :name
      t.string :descrip

      t.timestamps null: false
    end
  end
end
