class Api::V1::OffersController < Api::V1::BaseController
  before_action :set_offer, only: [:show]

  def index
    respond_with Offer.all
  end

  def show
    respond_with @offer
  end

  def create
    debugger
    respond_with :api, :v1, Offer.create(offer_params)
  end
  
  
  private

    def set_offer
      @offer = Offer.find(params[:id])
    end

    def offer_params
      params.require(:offer).permit(:description, :url, :price, :comment)
    end
      
end