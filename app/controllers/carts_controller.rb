class CartsController < ApplicationController

  def destroy
    @cart.destroy
    redirect_to :back
  end

  def index
    @cart = current_cart
  end

end
