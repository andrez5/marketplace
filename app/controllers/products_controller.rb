class ProductsController < ApplicationController
  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.save
    # redirect_to product_path(@product)
  end
  
  def destroy
    @product = product.find(params[:id])
    @product.destroy
    redirect_to products_path, status: :see_other
  end

  private

  def product_params
    params.require(:product).permit(:title, :info, :photo, :price, :available, :user_id)
  end

end
