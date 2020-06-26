class SessionsController < ApplicationController
  def new
  end

  def create
    @gamer = Gamer.find_by(gamertag: params[:gamertag])
    return redirect_to "/signin" unless @gamer.authenticate(params[:password])

    session[:gamer_id] = @gamer.id
    redirect_to "/"
  end

  def destroy
    session.delete :gamer_id

    redirect_to signin_path
  end
end