class CreatePokemons < ActiveRecord::Migration[5.0]
  def change
    create_table :pokemons do |t|
      t.integer :all_world_number
      t.string  :name
      t.integer :type_1
      t.integer :type_2
      t.integer :race_h
      t.integer :race_a
      t.integer :race_b
      t.integer :race_c
      t.integer :race_d
      t.integer :race_s
      t.string  :ability_1
      t.string  :ability_2
      t.string  :ability_dream


      t.timestamps
    end
  end
end
