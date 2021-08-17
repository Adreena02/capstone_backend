class CreateUserVillagers < ActiveRecord::Migration[6.1]
  def change
    create_table :user_villagers do |t|
      t.integer :player_id
      t.integer :villager_id

    end
  end
end
