class VideoGamesController < ApplicationController
  def index
    @platform = Platform.find(params[:platform_id])
    @video_games = VideoGame.where("platform_id = ?", params[:platform_id])
  end

  def show
    @video_game = VideoGame.find(params[:id])
    @platform = Platform.find(params[:platform_id])
  end

  def new
    @video_game = VideoGame.new
    @platform = Platform.find(params[:platform_id])
  end
end
