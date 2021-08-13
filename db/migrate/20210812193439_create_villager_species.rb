class CreateVillagerSpecies < ActiveRecord::Migration[6.1]
  def change
    create_table :villager_species do |t|
      t.integer :villager_id
      t.integer :species_id

    end
  end
end
