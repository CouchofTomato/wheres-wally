# controller to render the photos required for the game
class PhotosController < ApplicationController
  def index
    @photos = Photo.joins(:scores)
  end

  def show
    @photo = Photo.find(params[:id]) 
  end
end
