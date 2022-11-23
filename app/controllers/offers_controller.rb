class OffersController < ApplicationController
  def index
    @offers = Offer.all
  end

  def show
    @offer = Offer.find(params[:id])
  end

  def new
    @offer = Offer.new
  end

  def create
    @product = Product.find(params[:product_id])
    @offer = Offer.new(offer_params)
    @offer.product = @product
    @offer.user = current_user
    if @offer.save
      redirect_to product_offer_path(@product, @offer), notice: "deu boa"
    else
      render 'products/show', status: :unprocessable_entity
    end
  end

  def edit
    @offer = Offer.find(params[:id])
  end

  def update
    if @offer.update(offer_params)
      redirect_to @offer, notice: "offer was successfully update."
    else
      render :edit, status: :unproccessable_entity
    end
  end

  def destroy
    @offer = Offer.find(params[:id])
    @offer.destroy
    redirect_to products_path, status: :see_other
  end

  private

  def offer_params
    params.require(:offer).permit(:quantity, :product_id)
  end
end
