class ShoppingCartsController < ApplicationController

  def index
    @shoppingCart = ShoppingCart.all
    render json: @shoppingCart
end
