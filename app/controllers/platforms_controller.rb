class PlatformsController < ApplicationController
  before_action :set_platform, only: %i[show edit update]

  def index
    @platforms = Platform.all
  end

  def show
    @gamers = @platform.gamers
  end

  def new
    @platform = Platform.new
  end

  def create
    @platform = Platform.new(platform_params)
    if @platform.save
      redirect_to platform_path(@platform)
    else
      render "new"
    end
  end

  def edit
    @release_date = @platform.release_date.to_date
  end

  def update
    @platform.update(platform_params)

    redirect_to platform_path(@platform)
  end

private

  def platform_params
    params.require(:platform).permit(:name, :release_date, :developer)
  end

  def set_platform
    @platform = Platform.find(params[:id])
  end
end
