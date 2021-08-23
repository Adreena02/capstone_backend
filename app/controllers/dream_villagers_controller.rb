class DreamVillagersController < ApplicationController

    def index
        dreamies = DreamVillager.all
        render json: dreamies
    end

    def show
        dreamy = find_dreamy
        render json: dreamy
    end

    def create
        dream = DreamVillager.create!(dream_params)
        if dream.valid?
            render json: dream.custom_dream_method, status: :created
        else
            render json: {error: "Not able to make this villager your dreamie"}
        end
    end

    def destroy
        dreamie = DreamVillager.find_by(id: params[:id])
        if dreamie
            dreamie.destroy
            render json: "Removed villager from dream list"
        else
            render json: {error: "Dream villager is not found"}, status: :not_found
        end
    end


    private

    def find_dreamy
        DreamVillager.find_by(id: params[:id])
    end

    def dream_params
        params.permit(:villager_id, :player_id)
    end
    

end
