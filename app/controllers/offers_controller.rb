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

end
