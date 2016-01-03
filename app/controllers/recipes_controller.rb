class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all.order(:name)
  end

  def new
    @recipe = Recipe.new
    @categories = Category.all.order(:name)
    @ingredients = Ingredient.all.order(:name)
  end

  def create
    @recipe = Recipe.create(recipe_params)
    @ingredients = Ingredient.where(id: params[:ingredients])
    @recipe.ingredients << @ingredients
    redirect_to recipes_path
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
    @categories = Category.all.order(:name)
    @ingredients = Ingredient.all.order(:name)
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(recipe_params)
    @ingredients = Ingredient.where(id: params[:ingredients])
    @recipe.ingredients << @ingredients
    redirect_to recipes_path
  end

  def destroy
    Recipe.find(params[:id]).destroy
    redirect_to recipes_path
  end

  private
    def recipe_params
      params.require(:recipe).permit(:name, :method, :category_id, :image)
    end

end