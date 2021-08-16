class CreateVillagers < ActiveRecord::Migration[6.1]
  def change
    create_table :villagers do |t|
      t.string :name
      t.string :birthday
      t.string :gender
      t.string :species
      t.string :image_url

    end
  end
end
