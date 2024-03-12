class UsersController < ApplicationController
  # def index
  #   @notifications = Notification.all
  # end

  def profile
    @user = User.find(params[:id])
  end
end
