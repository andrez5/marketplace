class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    if @product.update(product_params)
      redirect_to @product, notice: "product was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def new
    @product = Product.new
  end

  def show
    @product = Product.find(params[:id])
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path, status: :see_other
  end

  def create
    @product = Product.new(product_params)
    @product.user = User.first
    if @product.save
      redirect_to @product, notice: "product was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def product_params
    params.require(:product).permit(:title, :info, :photo, :price, :available, :user_id)
  end
end
