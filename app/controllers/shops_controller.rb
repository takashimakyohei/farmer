class ShopsController < ApplicationController
  def index
    @shops = Shop.all
  end

  def show
    @shop = Shop.find(params[:id])
    @vegetables = @shop.vegetables
  end


  def edit
    @shop = current_shop
  end

  def update
    @shop = current_shop
    if @shop.update(shop_params)
      redirect_to shop_path, notice: "ユーザーを更新した"
    else
      render :edit
    end
  end

  private

  def shop_params
    params.require(:shop).permit(:name, :email, :image, :profile, :address, :prefecture)
  end
end
