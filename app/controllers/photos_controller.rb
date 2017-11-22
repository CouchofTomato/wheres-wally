# controller to render the photos required for the game
class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end

  def show
    @photo = Photo.find(params[:id])
    @score = @photo.scores.new
    @start_time = Time.zone.now
    @characters = PhotosCharacter.where(photo_id: params[:id]).as_json(:include => :character)
  end
end
