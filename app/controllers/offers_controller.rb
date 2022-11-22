class OffersController < ApplicationController

  def index
    @offers = Offer.all
  end

  def edit
    @offer = Offer.find(params[:id])
  end
end
