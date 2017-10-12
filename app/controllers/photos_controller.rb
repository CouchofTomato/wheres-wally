# controller to render the photos required for the game
class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end

  def show
    @photo = Photo.find(params[:id])
    @start_time = Time.zone.now
    @characters = decorated_characters
  end
  
  private
  def decorated_characters
    PhotosCharacter.where(photo_id: params[:id]).map do |character|
      CharacterDecorator.new(character)
    end
  end
end
