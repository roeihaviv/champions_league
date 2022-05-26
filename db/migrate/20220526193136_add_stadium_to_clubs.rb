class AddStadiumToClubs < ActiveRecord::Migration[6.0]
  def change
    add_column :clubs, :stadium, :string
  end
end
