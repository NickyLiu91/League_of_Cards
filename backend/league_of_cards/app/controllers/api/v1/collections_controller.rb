class Api::V1::CollectionsController < ApplicationController
  before_action :find_collection, only: [:show]

  def index
    @collections = Collection.all
    render json: @collections.to_json(only: [:id, :player_id, :card_id],
        include: [player: {only: [:id, :name]},
                  card: {only: [:id, :name, :title, :role, :rarity,
                  :attack, :magic, :defense, :description, :quantity, :key, :image]}]
      )
  end

  def show
    render json: @collection.to_json(only: [:id, :player_id, :card_id],
      include: [player: {only: [:id, :name]},
                card: {only: [:id, :name, :title, :role, :rarity,
                :attack, :magic, :defense, :description, :quantity, :key, :image]}]
      )
  end

  def new
    @collection = Collection.new
  end

  def create
    @collection = Collection.create(collection_params)
  end

  def edit
    @collection = Collection.find_by(id: params[:id])
  end

  def update
    @collection = Collection.find_by(id: params[:id])
    @collection.update(collection_params)
  end

  private

  def collection_params
    params.require(:collection).permit(:player_id, :card_id)
  end

  def find_collection
    @collection = Collection.find(params[:id])
  end
end
