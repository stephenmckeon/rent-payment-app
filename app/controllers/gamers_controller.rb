class GamersController < ApplicationController
  before_action :set_gamer, only: %i[show edit update destroy]

  def index
    @gamers = Gamer.all
  end

  def show; end

  def new
    @gamer = Gamer.new
  end

  def create
    @gamer = Gamer.new(gamer_params)

    if @gamer.save
      redirect_to signin_path
    else
      render "new"
    end
  end

  def edit; end

  def update
    @gamer.update(gamer_params)

    redirect_to gamer_path(@gamer)
  end

  def destroy
    @gamer.destroy

    redirect_to "/"
  end

private

  def gamer_params
    params.require(:gamer).permit(:name, :gamertag, :password)
  end

  def set_gamer
    @gamer = Gamer.find(params[:id])
  end
end
