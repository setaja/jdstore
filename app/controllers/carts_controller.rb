class CartsController < ApplicationController

  def destroy
    current_cart.destroy
    redirect_to :back
  end

  def delete_item
    @item = Good.find(params[:cart_item_id])
    @item.destroy
    redirect_to :back
  end

end
