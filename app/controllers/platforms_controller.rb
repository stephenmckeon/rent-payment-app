class PlatformsController < ApplicationController
  before_action :set_platform, only: %i[show]

  def index
    @platforms = Platform.all
  end

private

  def platform_params
    params.require(:platform).permit(:name, :release_date, :developer)
  end

  def set_platform
    @platform = Platform.find(params[:id])
  end
end
