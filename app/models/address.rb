class Address < ApplicationRecord
  geocoded_by :address
  before_save :geocode

  def address
    [line_1, line_2, pincode, city, state].join(' ,')
  end
end
