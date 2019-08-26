class ReservationsController < ApplicationController

  def search
    result = Address.near(params[:location])
    respond_to do |format|
      format.json { result }
    end
  end
  
  def create
  end


end
