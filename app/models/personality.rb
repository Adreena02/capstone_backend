class Personality < ApplicationRecord
    has_many :villager_personalities
    has_many :villagers, through: :villager_personalities
end
