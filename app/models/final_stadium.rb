# == Schema Information
#
# Table name: final_stadia
#
#  id              :integer          not null, primary key
#  city            :string
#  number_of_seats :integer
#  stadium_image   :string
#  stadium_name    :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  season_id       :integer
#
class FinalStadium < ApplicationRecord

  belongs_to(:season, { :required => true, :class_name => "Season", :foreign_key => "season_id" })

  has_many(:seasons, { :class_name => "Season", :foreign_key => "stadium_id", :dependent => :destroy })

  # has_many(:clubs, { :class_name => "Club", :foreign_key => "stadium_id", :dependent => :destroy })
end
