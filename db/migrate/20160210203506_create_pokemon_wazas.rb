class CreatePokemonWazas < ActiveRecord::Migration[5.0]
  def change
    create_table :pokemon_wazas do |t|
      t.references :pokemon, foreign_key: true
      t.references :waza, foreign_key: true

      t.timestamps
    end
  end
end
