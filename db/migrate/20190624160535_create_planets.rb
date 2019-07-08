class CreatePlanets < ActiveRecord::Migration[5.2]
  def change
    create_table :planets do |t|
      t.string :name
      t.string :first
      t.integer :likes
      t.string :diameter
      t.float :mass
      t.string :orbital_period
      t.string :day_length
      t.integer :sun_distance
      t.integer :temperature
      t.boolean :isAdopted
      t.text :comment
      t.text :desc
      
      t.timestamps
    end
  end
end
