class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :line_1
      t.string :line_2
      t.string :pincode
      t.string :city
      t.string :state
      t.string :latitude
      t.string :longitude
      t.string :type

      t.timestamps
    end
  end
end
