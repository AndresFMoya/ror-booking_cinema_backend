class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.integer :movie_id, null: false
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
