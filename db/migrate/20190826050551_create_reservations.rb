class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.string :user_id
      t.string :parking_spot_id
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
