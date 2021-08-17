class PlayersController < ApplicationController

    def index
        players = Player.all
        render json: players
    end

    def show
        player = find_player
        render json: player
    end

    private

    def find_player
        Player.find_by(id: params[:id])
    end


end
