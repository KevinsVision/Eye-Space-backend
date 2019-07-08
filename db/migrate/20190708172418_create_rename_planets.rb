class CreateRenamePlanets < ActiveRecord::Migration[5.2]
  def change
    create_table :rename_planets do |t|
      t.references :user, foreign_key: true
      t.references :planet, foreign_key: true
      t.string :renamed

      t.timestamps
    end
  end
end
