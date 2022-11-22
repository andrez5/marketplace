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
    @offer = Offer.new(offer_params)
    @offer.save
    # redirect_to offer_path(@offer)
  end

  private

  def offer_params
    params.require(:offer).permit(:quantity, :product_id)
  end
end
