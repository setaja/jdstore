class Admin::GoodsController < ApplicationController
  before_action :authenticate_user!, only:[:new, :create, :update, :edit, :destroy]
  before_action :admin_required
  layout "admin"
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
      redirect_to admin_goods_path
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
      redirect_to admin_goods_path
    else
      render :edit
    end
  end

  def destroy
    @good = Good.find(params[:id])
    @good.destroy
    redirect_to goods_path
  end

  def publish
    @good = Good.find(params[:id])
    @good.publish!

    redirect_to :back
  end

  def hide
    @good = Good.find(params[:id])

    @good.hide!

    redirect_to :back
  end




  private

  def good_params
    params.require(:good).
    permit(:title, :description, :stuff_size, :stuff_price, :stuff_quantity, :is_hidden, :image)
  end

end
