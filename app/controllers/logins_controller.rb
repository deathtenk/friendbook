class LoginsController < ApplicationController
  def create
    user = User.find(params[:user_id])
    session[:user_id] = user.id
    redirect_to '/'
  end

  def new
    @users = User.all
  end

  def destroy
    #binding.pry
    reset_session
    redirect_to '/'
  end
end
