class ReservationsController < ApplicationController


  def decline
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to profile_path(current_user)
  end

  def show
    @reservation = Reservation.find(params[:id])
    @reservations = Reservation.where(brain_id: @reservation.brain_id)
    @reservations = []
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

  def accept
    @reservation = Reservation.find(params[:id])
    @reservation.status = true # Or "accepted", if using a string
    if @reservation.save
      redirect_to @reservation, notice: 'Reservation accepted successfully.'
    else
      render :show, status: :unprocessable_entity
    end
  end


  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :cost)
  end
end
