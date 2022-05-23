class CreateFinalStadia < ActiveRecord::Migration[6.0]
  def change
    create_table :final_stadia do |t|
      t.string :stadium_name
      t.string :city
      t.string :stadium_image
      t.integer :number_of_seats
      t.integer :season_id

      t.timestamps
    end
  end
end
