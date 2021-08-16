class Player < ApplicationRecord
    has_many :user_villagers
    has_many :dream_villagers
    has_many :villagers, through: :user_villagers
    has_many :villagers, through: :dream_villagers

end
