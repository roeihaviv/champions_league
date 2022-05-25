class CreateCoaches < ActiveRecord::Migration[6.0]
  def change
    create_table :coaches do |t|
      t.string :coach_name
      t.integer :club_id
      add_column :coach_image

      t.timestamps
    end
  end
end
