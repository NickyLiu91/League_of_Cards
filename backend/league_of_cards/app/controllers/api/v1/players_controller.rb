class Api::V1::PlayersController < ApplicationController
  before_action :find_player, only: [:show]

  def index
    @players = Player.all
    render json: @players.to_json
  end

  def show
    render json: @player.to_json
  end

  private

  def players_params
    params.require(:player).permit(:name)
  end

  def find_player
    @player = Players.find(params[:id])
  end
end
