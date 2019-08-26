class Reservation < ApplicationRecord
  has_one :user
  has_one :parking_spot

  STATUS = ['active', 'cancelled']

  def on_going?
    Time.now.between? start_time, end_time
  end

  def available?
    status != 'active'
  end
end
