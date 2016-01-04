class IngredientsController < ApplicationController

  before_action :load_recipe, except: [:index, :new, :create]

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
  end

  def edit
  end

  def update
    @ingredient.update(ingredient_params)
    redirect_to ingredients_path
  end

  def destroy
    @ingredient.destroy
    redirect_to ingredients_path
  end

  private
    def ingredient_params
      params.require(:ingredient).permit(:name, :image)
    end

    def load_recipe
      @recipe = Recipe.find(params[:id])
    end
end