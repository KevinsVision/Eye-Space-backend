class CreatePlanets < ActiveRecord::Migration[5.2]
  def change
    create_table :planets do |t|
      t.string :name
      t.integer :likes
      t.string :diameter
      t.float :mass
      t.string :orbital_period
      t.string :day_length
      t.integer :sun_distance
      t.integer :temperature
      t.integer :moons

      t.timestamps
    end
  end
end
