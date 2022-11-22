class ProductsController < ApplicationController
  def new
  end

  def destroy
    @product = product.find(params[:id])
    @product.destroy
    redirect_to products_path, status: :see_other
  end

end
