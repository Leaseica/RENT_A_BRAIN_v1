class UsersController < ApplicationController
  # def index
  #   @notifications = Notification.all
  # end

  def show
    @user = User.find(params[:id])
  end

  def profile
    @user = current_user
    @brains = Brain.where(user: @user)
    @reservations = []
    @brains.each do |brain|
      @reservations << Reservation.where(brain: brain)
    end
  end
end
