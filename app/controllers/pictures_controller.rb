class PicturesController < ApplicationController
FlickRaw.api_key = ENV["FLICKRAW_API_KEY"]
FlickRaw.shared_secret = ENV["FLICKRAW_SHARED_SECRET"]
def index
    if !params[:user_id].nil?
    @photos = flickr.people.getPhotos(user_id: params[:user_id])
    @url = []
    @photos.each do |photo|
    @url.push("https://farm#{photo.farm}.staticflickr.com/#{photo.server}/#{photo.id}_#{photo.secret}.jpg")
    end
    end
end

end
