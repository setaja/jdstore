class GoodsController < ApplicationController
  def show
    @good = Good.find(params[:id])
  end

  def index
    @goods = Good.all
  end

  def new
    @good =Good.new
  end

  def create
    @good = Good.new(good_params)
    if @good.save
      redirect_to goods_path
    else
      render :new
    end
  end

  private
  def good_params
    params.require(:good).permit(:title, :description)
  end
  
end
