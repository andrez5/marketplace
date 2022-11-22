class OffersController < ApplicationController

  def index
    @offers = Offer.all
  end

  def edit
    @offer = Offer.find(params[:id])
  end

  def show
    @offer = Offer.find(params[:id])
  end

  def new
    @offer = Offer.new
  end
end
