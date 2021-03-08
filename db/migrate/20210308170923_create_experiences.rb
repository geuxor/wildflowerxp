class CreateExperiences < ActiveRecord::Migration[6.0]
  def change
    create_table :experiences do |t|
      t.string :title
      t.text :description
      t.string :location
      t.integer :price
      t.string :activity
      t.integer :max_guests
      t.string :meeting_point
      t.text :policies
      t.integer :activity_effort
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
