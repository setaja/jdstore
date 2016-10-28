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

  def edit
    @good = Good.find(params[:id])
  end

  def update
    @good = Good.find(params[:id])
    if @good.update(good_params)
      redirect_to goods_path
    else
      render :edit
    end
  end

  private

  def good_params
    params.require(:good).permit(:title, :description)
  end

end
