class Admin::GoodsController < ApplicationController
  before_filter :authenticate_user!, only:[:new, :create, :update, :edit, :destroy]
  before_filter :require_is_admin
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

  def destroy
    @good = Good.find(params[:id])
    @good.destroy
    redirect_to goods_path
  end

  def require_is_admin
    if !current_user.admin?
      flash[:alert] = 'you are not admin'
      redirect_to root_path
    end
  end

  private

  def good_params
    params.require(:good).permit(:title, :description)
  end

end
