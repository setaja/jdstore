class CartsController < ApplicationController

  def destroy
    @cart.destroy
    redirect_to :back
  end


end
