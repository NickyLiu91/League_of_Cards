class Api::V1::AllcardsController < ApplicationController

  before_action :find_allcard, only: [:show]

  def index
    @allcards = Allcard.all
    render json: @allcards
  end

  def show
    render json: @allcard
  end

  def new
    @allcard = Allcard.new
  end

  def create
    @allcard = allCard.create(allcard_params)
  end

  def edit
    @allcard = allCard.find_by(id: params[:id])
  end

  def update
    @allcard = Allcard.find_by(id: params[:id])
    @allcard.update(allcard_params)
  end

  private

  def allcard_params
    params.require(:allcard).permit(:id, :name, :title, :role, :rarity,
    :attack, :magic, :defense, :description, :quantity, :key, :image, :cardtype, :effect)
  end

  def find_allcard
    @allcard = Allcard.find(params[:id])
  end
end
