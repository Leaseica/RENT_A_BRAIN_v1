class ReservationsController < ApplicationController

  def show
    @reservation = Reservation.find(params[:id])
  end

  def new
    @brain = Brain.find(params[:brain_id])
    @reservation = Reservation.new
    @reservation.user_id = current_user.id
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user_id = current_user.id
    @reservation.brain_id = params[:brain_id]
    respond_to do |format|
      if @reservation.save!
        format.html { redirect_to reservation_path(@reservation) }
        format.json
      else
        format.html { render "reservations/new", status: :unprocessable_entity }
        format.json
      end
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :cost)
  end
end
