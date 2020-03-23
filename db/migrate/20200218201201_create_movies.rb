class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :name, null: false
      t.string :image, null: false
      t.date :date_start, null: false
      t.date :date_end, null: false

      t.timestamps
    end
  end
end
