class Player < ApplicationRecord
    has_many :user_villagers
    has_many :dream_villagers
    has_many :villagers, through: :user_villagers
    has_many :villagers, through: :dream_villagers

    validates :user_name, :password_digest, presence: {message: "Username and Password must exist"}
    validates :user_name, uniqueness: {message: "That username is already taken"}
    validates :email, uniqueness: {message: "That email is already taken"}

    # has_secure_password

end
