class CreateCar < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :name
      t.datetime :age
      t.string :color
      t.integer :price
      t.integer :power
      t.integer :weight
      t.integer :speed
      t.string :size
      t.text :picture

      t.timestamps
    end
  end
end
