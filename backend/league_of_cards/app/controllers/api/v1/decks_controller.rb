class Api::V1::DecksController < ApplicationController
  before_action :find_deck, only: [:show]
  # validates :name, uniqueness: { case_sensitive: false }

  def index
    @decks = Deck.all
    render json: @decks
  end

  def show
    render json: @deck
  end

  def new
    @deck = Deck.new
  end

  def create
    @deck = Deck.create(deck_params)
  end

  def edit
    @deck = Deck.find_by(id: params[:id])
  end

  def update
    @deck = Deck.find_by(id: params[:id])
    @deck.update(deck_params)
  end

  def player_decks
    @player = Player.find(params[:player_id])
    @decks = @player.decks
    render json: @decks.to_json(only: [:id, :name],
        include: [player: {only: [:id, :name, :computer]},
                  cards: {only: [:id, :name, :title, :role, :rarity,
                  :attack, :magic, :defense, :description, :quantity, :key, :image]}]
      )
  end

  def player_decks_show
    @player = Player.find(params[:player_id])
    @deck = @player.decks.find(params[:deck_id])
    render json: @deck.to_json(only: [:id, :name],
        include: [
                  cards: {only: [:id, :name, :title, :role, :rarity,
                  :attack, :magic, :defense, :description, :quantity, :key, :image]}]
      )
  end

  def card_decks
    @card = Card.find(params[:card_id])
    @decks = @card.decks
    render json: @decks.to_json(only: [:id, :name],
        include: [player: {only: [:id, :name, :computer]},
                  cards: {only: [:id, :name, :title, :role, :rarity,
                  :attack, :magic, :defense, :description, :quantity, :key, :image]}]
      )
  end

  def destroy
    @deck = Deck.find_by(id: params[:id])
    @deck.destroy
  end

  private

  def deck_params
    params.require(:deck).permit(:name, :player_id)
  end

  def find_deck
    @deck = Deck.find(params[:id])
  end
end
