class CreateCars < ActiveRecord::Migration[7.2]
  def change
    create_table :cars do |t|
      t.text :brand
      t.text :model
      t.integer :year
      t.text :fuel
      t.references :owner, null: false, foreign_key: true

      t.timestamps
    end
  end
end
