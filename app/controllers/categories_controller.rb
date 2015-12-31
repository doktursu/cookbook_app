class CategoriesController < ApplicationController

  def index
    @categories = Category.all.order(:name)
  end

  def new
    @category = Category.new
  end

end

