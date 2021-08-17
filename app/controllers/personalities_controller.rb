class PersonalitiesController < ApplicationController

    def index
      render json: Personality.all  
    end

    def show
      personality = find_personality
      render json: personality
    end

    private

    def find_personality
      Personality.find_by(id: params[:id])
    end

end
