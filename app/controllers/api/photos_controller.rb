class Api::PhotosController < ApplicationController

  def index
    @photos = HTTP.get("https://pixabay.com/api/?key=#{Rails.application.credentials.photos_api[:api_key]}&q=yellow+flowers&image_type=photo")
    render json: @photos.parse
  end

end
