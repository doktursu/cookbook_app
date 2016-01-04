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
    @recipe.ingredients = @ingredients
    redirect_to recipe_path(@recipe)
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
    @recipe.ingredients = @ingredients
    redirect_to recipe_path(@recipe)
  end

  def remove_ingredient
    ingredient = Ingredient.find(params[:format])
    recipe = ingredient.recipes.find(params[:id])

    recipe.ingredients.delete(ingredient) if ingredient

    redirect_to recipe_path(recipe)
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