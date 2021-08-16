class VillagersController < ApplicationController

    def index
        render json: Villager.all
    end

end
