class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.integer :status
      t.integer :nr_of_people
      t.date :start_date
      t.date :end_date
      t.integer :total_price
      t.references :user, null: false, foreign_key: true
      t.references :experience, null: false, foreign_key: true

      t.timestamps
    end
  end
end
