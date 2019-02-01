class Api::V1::CardsController < ApplicationController
  before_action :find_card, only: [:show]

  def index
    if params[:player_id].present? then
      @player = Player.find(params[:player_id])
      render json: @player.cards
    elsif params[:deck_id].present? then
      @deck = Deck.find(params[:deck_id])
      render json: @deck.cards
    else
      @cards = Card.all
      render json: @cards
    end
  end

  def show
    render json: @card
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.create(card_params)
  end

  def edit
    @card = Card.find_by(id: params[:id])
  end

  def update
    @card = Card.find_by(id: params[:id])
    @card.update(card_params)
  end

  # def player_cards
  #   @player = Player.find(params[:player_id])
  #   @cards = @player.cards
  #   render json: @cards.to_json(only: [:id, :name, :title, :role, :rarity,
  #     :attack, :magic, :defense, :description, :quantity, :key, :image],
  #       include: [players: {only: [:id, :name, :computer]},
  #       decks: {only: [:id, :name],
  #         include: [player: {only: [:id, :name]}]
  #         }]
  #     )
  # end

  # def player_cards_card_show
  #   @player = Player.find(params[:player_id])
  #   @card = @player.cards.find(params[:card_id])
  #   render json: @card.to_json(only: [:id, :name, :title, :role, :rarity,
  #     :attack, :magic, :defense, :description, :quantity],
  #       include: [players: {only: [:id, :name]},
  #       decks: {only: [:id, :name],
  #         include: [player: {only: [:id, :name]}]
  #         }]
  #     )
  # end

  # def player_cards_card_edit
  #   @player = Player.find(params[:player_id])
  #   @card = @player.cards.find(params[:card_id])
  # end
  #
  # def player_cards_card_update
  #   @player = Player.find(params[:player_id])
  #   @card = @player.cards.find(params[:card_id])
  #   @card.update(card_params)
  # end

  # def deck_cards
  #   @deck = Deck.find(params[:deck_id])
  #   @cards = @deck.cards
  #   render json: @cards.to_json(only: [:id, :name, :title, :role, :rarity,
  #     :attack, :magic, :defense, :description, :quantity, :key, :image],
  #       include: [players: {only: [:id, :name, :computer]},
  #       decks: {only: [:id, :name],
  #         include: [player: {only: [:id, :name]}]
  #         }]
  #     )
  # end

  private

  def card_params
    params.require(:card).permit(:id, :name, :title, :role, :rarity,
    :attack, :magic, :defense, :description, :quantity, :key, :image, :player_id,
    :cardtype, :effect)
  end

  def find_card
    @card = Card.find(params[:id])
  end
end
