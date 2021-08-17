class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.string :user_name
      t.string :email
      t.string :password_digest
      
    end
  end
end
