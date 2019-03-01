class Api::V1::PlayersController < ApplicationController
  # skip_before_action :authorized, only: %i[create], raise: false
  before_action :find_player, only: [:show]

  def index
    @players = Player.all
    render json: @players
  end

  def show
    render json: @player
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.create(player_params)
    # if @player.valid?
    #   render json: { player: PlayerSerializer.new(@player) }, status: :created
    # else
    #   render json: { error: 'failed to create user' }, status: :not_acceptable
    # end
  end

  def edit
    @player = Player.find_by(id: params[:id])
  end

  def update
    @player = Player.find_by(id: params[:id])
    @player.update(player_params)
  end

  def card_players
    @card = Card.find(params[:card_id])
    @players = @card
  end

  def deck_player
    @deck = Deck.find(params[:deck_id])
    @player = @deck
  end

  private

  def player_params
    params.require(:player).permit(:name, :image, :computer, :image, :password_digest, :gold, :level, :dialogue, :defeated_id, :background, :preduel, :completed)
  end

  def find_player
    @player = Player.find(params[:id])
  end
end
