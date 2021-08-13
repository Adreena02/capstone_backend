class CreateVillagerPersonalities < ActiveRecord::Migration[6.1]
  def change
    create_table :villager_personalities do |t|
      t.integer :personality_id
      t.integer :villager_id

    end
  end
end
