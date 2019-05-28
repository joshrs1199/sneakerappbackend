class SneakersController < ApplicationController

  def index
    @sneakers= Sneaker.all
    render json: @sneakers
  end

  def show

  end

  def new
    @sneaker = Sneaker.new(sneaker_params)
  end

  def create
    @sneaker = Sneaker.create(sneaker_params)

    render json: @sneaker

  end

  def destroy
    @sneaker = Sneaker.find(params[:id])
    @sneaker.destroy
    
    render json: @sneaker
  end


  private

  def sneaker_params
    params.require(:sneaker).permit(:name, :brand, :price, :description, :colorway, :image_url)
  end



end
