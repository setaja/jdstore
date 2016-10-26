class GoodsController < ApplicationController
  def show
    @goods = Goods.find(params[:id])
  end

  def index
    @goods = Goods.all
  end
end
