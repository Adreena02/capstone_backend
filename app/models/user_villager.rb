class UserVillager < ApplicationRecord
    belongs_to :player
    belongs_to :villager


    def custom_json_method
        {
            id: self.id,
            name: self.villager.name,
            gender: self.villager.gender,
            species: self.villager.species,
            birthday: self.villager.birthday,
            img_url: self.villager.img_url,
            personality_traits: self.villager.personalities
        }
    end 
end
