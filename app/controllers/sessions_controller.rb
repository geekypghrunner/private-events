class SessionsController < ApplicationController
  def new
  end
  
  def create
    if params[:session][:id].nil?
      @user = User.find_by(name: params[:session][:name])
    else
      @user = User.find(params[:session][:id])
    end
    log_in @user
    redirect_to user_path(@user)
  end
end
