class ShoppingCartsController < ApplicationController

  def index
    @shoppingCart = ShoppingCart.all
    render json: @shoppingCart
  end


  def new
    shoppingcart = ShoppingCart.new
  end


  def create
    shoppingcart = ShoppingCart.create(:sneaker_id)
  end



end
