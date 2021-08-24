class VillagersController < ApplicationController

    def index
        render json: Villager.all
    end

    def show
        villagers = find_villagers
        render json: villagers
    end

    def create
        villager = Villager.create!(villager_params)
        
        if villager.valid?
            render json: villager, status: :created
        else
            render json: {error: "Not able to add this villager to the site"}
        end
    end

    private

    def find_villagers
        Villager.find_by(id: params[:id])
    end

    def villager_params
        params.permit(:name, :birthday, :gender, :species, :img_url)
    end

end
