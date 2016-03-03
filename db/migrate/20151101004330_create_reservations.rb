class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :name
      t.time :arrival
      t.integer :party
      t.date :date
      t.string :phone

      t.timestamps null: false
    end
  end
end
