class CreateDreamVillagers < ActiveRecord::Migration[6.1]
  def change
    create_table :dream_villagers do |t|
      t.integer :user_id
      t.integer :villager_id
      
    end
  end
end
