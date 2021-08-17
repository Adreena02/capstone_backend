class Villager < ApplicationRecord
    has_many :user_villagers
    has_many :players, through: :user_villagers
    has_many :dream_villagers
    has_many :players, through: :dream_villagers
    has_many :villager_personalities
    has_many :personalities, through: :villager_personalities

end