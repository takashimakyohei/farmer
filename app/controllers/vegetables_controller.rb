class VegetablesController < ApplicationController
  def index
    @vegetables = Vegetable.all
  end

  def show
    @vegetable = Vegetable.find(params[:id])
  end

  def new
    @vegetable = Vegetable.new
  end

  def create
    @vegetable = Vegetable.new(vegetable_params)
    @vegetable.shop_id = current_shop.id
    if @vegetable.save
      redirect_to vegetable_path(@vegetable), notice: "投稿に成功しました"
    else
      render :new
    end
  end

  def edit
    @vegetable = Vegetable.find(params[:id])
    if @vegetable.shop_id != current_shop.id
      redirect_to vegetables_path, alert: "不正なアクセスです"
    end
  end

  def update
    @vegetable = Vegetable.find(params[:id])
    if @vegetable.update(vegetable_params)
      redirect_to vegetable_path(@vegetable), notice: "編集に成功しました"
    else
      render :edit
    end
  end

  def destroy
    vegetable = Vegetable.find(params[:id])
    vegetable.destroy
    redirect_to vegetables_path
  end

  private

  def vegetable_params
    params.require(:vegetable).permit(:title, :description, :image, :prefecture, :price, :content)
  end
end