class PersonalitiesController < ApplicationController

    def index
      render json: Personality.all  
    end

end
