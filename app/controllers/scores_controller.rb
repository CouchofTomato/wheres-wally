class ScoresController < ApplicationController
  def index
    @photo = Photo.find(params[:photo_id])
    @scores = @photo.scores.order(:time)
  end
  
  def new
    @photo = Photo.find(params[:photo_id])
    @score = @photo.scores.new
    @total_time = convert_time_to_seconds(params[:time])
    respond_to do |format|
      format.html
      format.js
    end
  end
  
  def create
    @photo = Photo.find(params[:photo_id])
    @score = @photo.scores.new(score_params)
    if @score.save
      redirect_to photo_scores_path(@photo)
    else
      render :new
    end
  end
  
  private
  
  def convert_time_to_seconds start_time
    start_time = DateTime.strptime(start_time, "\"%Y-%m-%dT%H:%M:%S.%LZ\"").to_time
    Time.at(Time.zone.now - start_time).to_i
  end
  
  def score_params
    params.require(:score).permit(:name, :time)
  end
end
