class SneakersController < ApplicationController

  def index
    @sneakers= Sneaker.all
    render json: @sneakers
  end

  def show

  end

  def new
    @sneaker = Sneaker.new(params)
  end

  def create
    @sneaker = Sneaker.create(sneaker_params)

    render json: @sneakers

  end


  private

  def sneaker_params
    params.require(:sneaker).permit(:name, :brand, :price, :description, :colorway, :image_url)
  end



end
