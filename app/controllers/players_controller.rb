class PlayersController < ApplicationController
    # skip_before_action :authorize, only: :create
    
    def index
        player = Player.all
        render json: player
    end

    def show
        player = find_player
        render json: player
    end

    def townies 
        player = find_player
        render json: player.user_villagers
    end
    
    def create
        user = Player.create!(player_params)
        session[:user_id] = user.id
        
        if user.valid?
            render json: player, status: :created
        else
            render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end
    end
    
    private
    
    def find_player
        Player.find_by(id: params[:id])
    end
    
    def player_params
        params.permit(:user_name, :email, :password )
    end
    
end

# def index
#     players = Player.all
#     render json: players
# end