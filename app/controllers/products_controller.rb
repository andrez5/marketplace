class ProductsController < ApplicationController
  def new
    @products = Product.all
  end

  def create
    @product = Product.new(product_params)
    @product.save
    # redirect_to product_path(@product)
  end

  private

  def product_params
    params.require(:product).permit(:title, :info, :photo, :price, :available, :user_id)
  end

end
