class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(:name => params[:user][:name])
    redirect_to user_path(@user)
  end


  def show
    @user = User.find(params[:id])
    @upcoming_events = @user.attended_events.where("DATE(date) >= ?", Date.today)
    @previous_events = @user.attended_events.where("DATE(date) < ?", Date.today)
  end
end
