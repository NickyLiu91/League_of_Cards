class Api::V1::CardsController < ApplicationController
  before_action :find_card, only: [:show]

  def index
    @cards = Card.all
    render json: @cards.to_json
  end

  def show
    render json: @card.to_json
  end

  private

  def cards_params
    params.require(:card).permit(:name)
  end

  def find_card
    @card = Cards.find(params[:id])
  end
end
