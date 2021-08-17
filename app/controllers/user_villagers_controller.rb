class UserVillagersController < ApplicationController
    
    def index
        render json: UserVillager.all
    end

    def create
        townie = UserVillager.create!(user_villager_params)
        if townie.valid?
            render json: townie, status: :created
        else
            render json: {error: "Not able to add this villager to your town"}
        end
    end

    def destroy
        townie = UserVillager.find_by(id: params[:id])
        if townie
            townie.destroy
            render json: "Villager has moved out"
        else
            render json: {error: "Villager is currently not in your town"}
        end
    end

    private

    def user_villager_params
        params.permit(:user_id, :villager_id)
    end



end
