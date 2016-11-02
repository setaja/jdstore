class CartItemsController < ApplicationController

  def destroy
    @cart = current_cart
    @current_cart_item = @cart.cart_items.find_by(good_id: params[:id])
    @current_cart_item.destroy
    redirect_to :back
  end

end
