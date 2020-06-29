class VideoGamesController < ApplicationController
  before_action :set_platform
  before_action :set_video_game, only: %i[show edit update destroy]

  def index
    @video_games = VideoGame.where("platform_id = ?", params[:platform_id])
  end

  def show; end

  def new
    @video_game = VideoGame.new
  end

  def create
    @video_game = VideoGame.new(video_game_params)

    if @video_game.save
      redirect_to platform_video_game_path(@platform, @video_game)
    else
      @release_date = @video_game.release_date.to_date
      render "new"
    end
  end

  def edit
    @release_date = @video_game.release_date.to_date
  end

  def update
    @video_game.update(video_game_params)

    redirect_to platform_video_game_path(@platform, @video_game)
  end

  def destroy
    @video_game.delete

    redirect_to platform_video_games_path(@platform)
  end

private

  def video_game_params
    params.require(:video_game).permit(:name, :genre, :platform_id, :release_date)
  end

  def set_platform
    @platform = Platform.find(params[:platform_id])
  end

  def set_video_game
    @video_game = VideoGame.find(params[:id])
  end
end
