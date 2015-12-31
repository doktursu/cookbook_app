class CategoriesController < ApplicationController

  def index
    @categories = Category.all.order(:name)
  end

  def new
    @category = Category.new
  end

  def create
    Category.create(category_params)
    redirect_to categories_path
  end

  def show
    @category = Category.find(params[:id])
    @recipes = Recipe.where(category_id: params[:id]).order(:name)
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    Category.find(params[:id]).update(category_params)
    redirect_to categories_path
  end

  def destroy
    Category.find(params[:id]).destroy
    redirect_to categories_path
  end

  private
  def category_params
    params.require(:category).permit(:name)
  end

end

