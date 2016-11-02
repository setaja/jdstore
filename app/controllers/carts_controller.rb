class CartsController < ApplicationController

  def destroy
    current_cart.destroy
    redirect_to :back
  end

end
