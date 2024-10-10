class StaticPagesController < ApplicationController
  def home
    flickr = Flickr.new(ENV['FLICKR_API_KEY'], ENV['FLICKR_API_SECRET'])

    if params[:flickr_user_id].present?
      flickr_user_id = params[:flickr_user_id]

      @photos = flickr.photos.search(user_id: flickr_user_id)
    end
  end
end
