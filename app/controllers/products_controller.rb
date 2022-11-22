class ProductsController < ApplicationController
  def new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    if @product.update(product_params)
      redirect_to @offer, notice: "product was successfully update."
    else
      render :edit, status: :unproccessable_entity
    end
  end
end
