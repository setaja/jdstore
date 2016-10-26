class GoodsController < ApplicationController
  def show
    @goods = Goods.find(params[:id])
  end
end
