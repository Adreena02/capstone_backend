class CreatePersonalities < ActiveRecord::Migration[6.1]
  def change
    create_table :personalities do |t|
      t.string :name

    end
  end
end
