class DessertsController < ApplicationController
  def index
    @desserts = Dessert.all
  end

  def show
    @dessert = Dessert.find(params[:id])
  end

  def new
    @dessert = Dessert.new
  end

  def create
    @dessert = Dessert.new(dessert_params)
    if @dessert.save
      redirect_to dessert_path(@dessert), notice: "Your dessert was successful created"
    else
      render :new
    end
  end

  def edit
    @dessert = Dessert.find(params[:id])
  end

  def update
    @dessert = Dessert.find(params[:id])
    if @dessert.update(dessert_params)
      redirect_to dessert_path(@dessert), notice: "Your dessert was successfully updated"
    else
      redner :edit
    end
  end

  def destroy
    Dessert.find(params[:id]).destroy
    redirect_to desserts_path
  end

  private

  def dessert_params
    params.require(:dessert).permit(:name, :price, topping_ids:[], toppings_attributes: [:name])
  end
end
