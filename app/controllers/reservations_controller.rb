class ReservationsController < ApplicationController
  before_action :set_reservation, only: [:show, :update, :destroy]

  # GET /reservations
  # GET /reservations.json
  def index
    @reservations = Reservation.all
    render json: @reservations
  end

  # GET /reservations/1
  # GET /reservations/1.json
  def show
  end

  # POST /reservations
  # POST /reservations.json
  def create
    # byebug
    @reservation = Reservation.new(user_id: params[:user_id], parking_spot_id: params[:parking_spot_id], start_time: params[:start_time], end_time: params[:end_time])

    if @reservation.save
      render json: @reservation, status: :created
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reservations/1
  # PATCH/PUT /reservations/1.json
  def update
    @reservation = Reservation.find(params[:id])
    if @reservation.update(params)
      render :show, status: :ok, location: @reservation
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /reservations/1
  # DELETE /reservations/1.json
  def destroy
    @reservation.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reservation
      @reservation = Reservation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reservation_params
      params#.fetch(:reservation, {})
    end
end
