class ScoresController < ApplicationController
  def index
    @photo = Photo.find(params[:photo_id])
    @scores = @photo.scores
  end
  
  def create
    @photo = Photo.find(params[:photo_id])
  end
end
