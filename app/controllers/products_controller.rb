class ProductsController < ApplicationController
  def index
    render json: PurchaseRepresenter.for_collection.new(get_purchases).to_json
  end

  private

  def get_purchases
    Food.random(3).map do |food|
      Purchase.create food_id: food.id
    end
  end
end
