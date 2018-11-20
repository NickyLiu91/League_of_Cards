class Api::V1::DecksController < ApplicationController
  before_action :find_deck, only: [:show]

  def index
    @decks = Deck.all
    render json: @decks.to_json
  end

  def show
    render json: @deck.to_json
  end

  private

  def decks_params
    params.require(:deck).permit(:name)
  end

  def find_deck
    @deck = Decks.find(params[:id])
  end
end
