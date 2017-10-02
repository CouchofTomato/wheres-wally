class PhotosController < ApplicationController
  def index
    @photo = Photo.all
  end

  def show
    
  end
end
