class VillagerPersonalitiesController < ApplicationController

    def index
        render json: VillagerPersonality.all
    end

    def show
        villager_person = find_villager_personality
        render json: villager_person
    end

    private
    
    def find_villager_personality
        VillagerPersonality.find_by(id: params[:id])
    end
end
