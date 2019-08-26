class ReservationsController < ApplicationController

  def search
    Address.near(params[:location])
  end
end
