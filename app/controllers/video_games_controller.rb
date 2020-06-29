class VideoGamesController < ApplicationController
  before_action :set_platform
  before_action :set_video_game, only: %i[show edit]

  def index
    @video_games = VideoGame.where("platform_id = ?", params[:platform_id])
  end

  def show; end

  def new
    @video_game = VideoGame.new
  end

  def create
    @video_game = VideoGame.new(video_game_params)
    @video_game.release_date = release_date_param

    if @video_game.save
      redirect_to platform_video_game_path(@platform, @video_game)
    else
      render "new"
    end
  end

  def edit
    @release_date = @video_game.release_date.to_date
  end

private

  def video_game_params
    params.require(:video_game).permit(:name, :genre, :platform_id, :release_date)
  end

  def release_date_param
    date_array = params.require(:video_game).permit(:release_date).values
    Date.new(date_array[0].to_i, date_array[1].to_i, date_array[2].to_i)
  end

  def set_platform
    @platform = Platform.find(params[:platform_id])
  end

  def set_video_game
    @video_game = VideoGame.find(params[:id])
  end
end
