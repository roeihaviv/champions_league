# == Schema Information
#
# Table name: seasons
#
#  id            :integer          not null, primary key
#  season_year   :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  stadium_id    :integer
#  top_scorer_id :integer
#  winner_id     :integer
#
class Season < ApplicationRecord

  belongs_to(:winner, { :required => true, :class_name => "Club", :foreign_key => "winner_id" })

  has_many(:top_scorers, { :class_name => "TopScorer", :foreign_key => "season_id", :dependent => :destroy })

  has_many(:final_stadia, { :class_name => "FinalStadium", :foreign_key => "season_id", :dependent => :destroy })

  belongs_to(:top_scorer, { :required => true, :class_name => "TopScorer", :foreign_key => "top_scorer_id" })

  belongs_to(:stadium, { :required => true, :class_name => "FinalStadium", :foreign_key => "stadium_id" })
end
