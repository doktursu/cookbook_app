class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all.order(:name)
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    Ingredient.create(ingredient_params)
    redirect_to ingredients_path
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def update
    Ingredient.find(params[:id]).update(ingredient_params)
    redirect_to ingredients_path
  end

  def destroy
    Ingredient.find(params[:id]).destroy
    redirect_to ingredients_path
  end

  private
    def ingredient_params
      params.require(:ingredient).permit(:name, :image)
    end
end