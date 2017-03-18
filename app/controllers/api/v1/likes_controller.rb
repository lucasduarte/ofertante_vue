class Api::V1::LikesController < Api::V1::BaseController
  before_action :authenticate_api_user!

  def create
    respond_with :api, :v1, current_api_user.likes.create(offer_id: params[:offer_id])
  end

  def destroy
    respond_with current_api_user.likes.find_by(offer_id: params[:id]).destroy
  end
end