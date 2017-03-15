class Api::V1::OffersController < Api::V1::BaseController
  before_action :set_offer, only: [:show]
  before_action :authenticate_api_user!, only: [:create]

  def index
    respond_with Offer.all
  end

  def show
    respond_with @offer
  end

  def create
    offer = offer_params
    offer[:user] = current_api_user

    respond_with :api, :v1, Offer.create(offer)
  end

  def destroy
    respond_with current_api_user.items.destroy(params[:id])
  end
  
  def update
    offer = current_api_user.offers.find(params[:id])
    offer.update_attributes(offer_params)
    respond_with offer, json: offer
  end
  
  private

    def set_offer
      @offer = Offer.find(params[:id])
    end

    def offer_params
      params.require(:offer).permit(:description, :url, :price, :comment)
    end
      
end