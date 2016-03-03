class ReservationsController < ApplicationController
  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.save
  end

  def show
    @reservation = Reservation.find_by(params[:id])
  end

  def index
    @reservations = Reservation.paginate(:page => params[:page], :per_page => 15)
  end

  def destroy
    @reservation = Reservation.find_by(params[:id])
    @reservation.destroy
  end

  private
    def reservation_params
      params.require(:reservation).permit(:name, :arrival, :party, :date, :phone)
    end
end
