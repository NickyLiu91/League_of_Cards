class Api::V1::DeckcardsController < ApplicationController
  before_action :find_deckcard, only: [:show, :update, :destroy]

  def index
    @deckcards = Deckcard.all
    render json: @deckcards.to_json(only: [:id, :deck_id, :card_id],
        include: [deck: {only: [:id, :name]},
                  card: {only: [:id, :name, :title, :role, :rarity,
                  :attack, :magic, :defense, :description, :quantity, :key, :image, :effect, :cardtype]}]
      )
  end

  def show
    render json: @deckcard.to_json(only: [:id, :deck_id, :card_id],
      include: [deck: {only: [:id, :name]},
                card: {only: [:id, :name, :title, :role, :rarity,
                :attack, :magic, :defense, :description, :quantity, :key, :image, :effect, :cardtype]}]
      )
  end

  def new
    @deckcard = Deckcard.new
  end

  def create
    @deckcard = Deckcard.create(deckcard_params)
  end

  def edit
    @deckcard = Deckcard.find_by(id: params[:id])
  end

  def update
    # @deckcard = Deckcard.find_by(id: params[:id])
    @deckcard.update(deckcard_params)
  end

  def destroy
    # @deckcard = Deckcard.find_by(id: params[:id])
    @deckcard.destroy
  end

  private

  def deckcard_params
    params.require(:deckcard).permit(:deck_id, :card_id)
  end

  def find_deckcard
    @deckcard = Deckcard.find(params[:id])
  end
end
