class GamingSessionsController < ApplicationController
  before_action :set_gamer
  skip_before_action :set_gamer, only: :index

  def index
    @gaming_sessions = GamingSession.all
  end

  def new
    @gaming_session = GamingSession.new(start_time: DateTime.now, end_time: DateTime.now)
  end

  def create
    @gaming_session = GamingSession.new(gaming_session_params)

    if @gaming_session.save
      redirect_to gamer_path(@gamer)
    else
      render "new"
    end
  end

  def destroy
    @gaming_session = GamingSession.find(params[:id])
    @gaming_session.delete

    redirect_to gamer_path(@gamer)
  end

private

  def gaming_session_params
    params.require(:gaming_session).permit(:gamer_id, :video_game_id, :start_time, :end_time)
  end

  def set_gamer
    @gamer = Gamer.find(session[:gamer_id])
  end
end
