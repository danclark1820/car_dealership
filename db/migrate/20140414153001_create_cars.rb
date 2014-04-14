class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :color,    null: false
      t.integer :year,    null: false
      t.string :mileage,  null: false
      t.integer :manufacturer_id

      t.timestamps
    end
  end
end