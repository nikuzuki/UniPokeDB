class CreateWazas < ActiveRecord::Migration[5.0]
  def change
    create_table :wazas do |t|
      t.integer :type_id
      t.string :name

      t.timestamps
    end
  end
end
