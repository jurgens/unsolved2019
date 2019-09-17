class RecipesController < ApplicationController
  def index
    render json: RecipeRepresenter.for_collection.new(get_recipes).to_json
  end

  private

  def get_recipes
    Recipe.limit(2)
  end
end
