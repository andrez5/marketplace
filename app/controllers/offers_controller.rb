class OffersController < ApplicationController

  def index
    @offers = Offer.all
  end

  def edit
    @offer = Offer.find(params[:id])
  end

  def update
    if @offer.update(offer_params)
      redirect_to @offer, notice: "offer was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def show
    @offer = Offer.find(params[:id])
  end

  def new
    @offer = Offer.new
  end


  def destroy
    @offer = Offer.find(params[:id])
    @offer.destroy
    redirect_to offers_path, status: :see_other
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
