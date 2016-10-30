class GoodsController < ApplicationController
  before_filter :authenticate_user!, only:[:new, :create, :update, :edit, :destroy]
  def show
    @good = Good.find(params[:id])
    if @good.is_hidden
      flash[:warining] = "This stuff already sold out"
      redirect_to root_path
    end
  end

  def index
    @goods = case params[:order]
    when 'by_price'
      Good.published.order('stuff_price DESC')
    else
      Good.published.recent
    end
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

  def destroy
    @good = Good.find(params[:id])
    @good.destroy
    redirect_to goods_path
  end

  private

  def good_params
    params.require(:good).permit(:title, :description, :stuff_size, :stuff_price, :stuff_quantity, :is_hidden)
  end

end
