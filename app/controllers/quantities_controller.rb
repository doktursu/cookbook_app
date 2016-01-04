class QuantitiesController < ApplicationController

  before_action :load_quantity

  def index
    @quantities = Quantity.all
  end

  def new
    @quantity = Quantity.new
  end

  def create
    Quantity.create(quantity_params)
    redirect_to quantities_path
  end

  def show
  end

  def edit
  end

  def update
    @quantity.update(quantity_params)
    redirect_to quantities_path
  end

  def delete
    @quantity.destroy
    redirect_to quantities_path
  end

  private
  def quantity_params
    params.require(:quantity).permit(:amount, :unit)
  end

  def load_quantity
    @quantity = Quantity.find(params[:id])
  end
end