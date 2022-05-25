class AddCoachImageToCoach < ActiveRecord::Migration[6.0]
  def change
    add_column :coaches, :coach_image, :string
  end
end
