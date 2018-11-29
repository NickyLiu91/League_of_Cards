class Api::V1::DecksController < ApplicationController
  before_action :find_deck, only: [:show]

  def index
    @decks = Deck.all
    render json: @decks.to_json(only: [:id, :name],
        include: [player: {only: [:id, :name]},
                  cards: {only: [:id, :name, :title, :role, :rarity,
                  :attack, :magic, :defense, :description, :quantity, :key, :image]}]
      )
  end

  def show
    render json: @deck.to_json(only: [:id, :name],
        include: [player: {only: [:id, :name]},
                  cards: {only: [:id, :name, :title, :role, :rarity,
                  :attack, :magic, :defense, :description, :quantity, :key, :image]}]
      )
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
        include: [player: {only: [:id, :name]},
                  cards: {only: [:id, :name, :title, :role, :rarity,
                  :attack, :magic, :defense, :description, :quantity, :key]}]
      )
  end

  def card_decks
    @card = Card.find(params[:card_id])
    @decks = @card.decks
    render json: @decks.to_json(only: [:id, :name],
        include: [player: {only: [:id, :name]},
                  cards: {only: [:id, :name, :title, :role, :rarity,
                  :attack, :magic, :defense, :description, :quantity, :key]}]
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
