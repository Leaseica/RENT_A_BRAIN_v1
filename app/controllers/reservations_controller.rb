class ReservationsController < ApplicationController
  def accept
    @reservation = Reservation.find(params[:id])
    @reservation.status = true
    @reservation.save
  end

  def decline
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to profile_path(current_user)
  end
end
