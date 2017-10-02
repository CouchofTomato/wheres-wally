# controller to render the photos required for the game
class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end

  def show
    @photo = Photo.find(params[:id]) 
  end
end
