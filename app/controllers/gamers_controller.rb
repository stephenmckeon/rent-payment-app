class GamersController < ApplicationController
  def index
    @gamers = Gamer.all
  end

  def show
    @gamer = Gamer.find(params[:id])
  end

  def new
    @gamer = Gamer.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end
end
