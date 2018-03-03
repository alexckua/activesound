class TracksController < ApplicationController
  respond_to :json

  def index
    respond_with Track.all
  end

  def create
    respond_with Track.create(track_params)
  end

  private

  def track_params
    params.require(:track).permit(:title, :file)
  end
end
