class UserVillager < ApplicationRecord
    belongs_to :player
    belongs_to :villager
end
