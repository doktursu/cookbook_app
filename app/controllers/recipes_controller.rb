class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @categories = Category.all
  end

  def create
    Recipe.create(recipe_params)
    redirect_to recipes_path
  end

  def edit
    @recipe = Recipe.find(params[:id])
    @categories = Category.all
  end

  def update
    Recipe.find(params[:id]).update(recipe_params)
    redirect_to recipes_path
  end

  private
    def recipe_params
      params.require(:recipe).permit(:name, :method, :category_id)
    end

end