class CreatePokemons < ActiveRecord::Migration[5.0]
  def change
    create_table :pokemons do |t|
      t.integer :all_world_number
      t.string :name
      t.integer :type_1
      t.integer :type_2

      t.timestamps
    end
  end
end
