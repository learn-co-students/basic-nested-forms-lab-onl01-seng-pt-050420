class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build()
    @recipe.ingredients.build()
  end

  def create
    Recipe.create(recipe_params)
    redirect_to recipes_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(
      ingredients_attributes: [
        :ingredient_0,
        :ingredient_1
      ]
    )
  end
end
