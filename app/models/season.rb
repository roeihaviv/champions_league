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

  belongs_to(:winning_club, { :required => true, :class_name => "Club", :foreign_key => "winning_club_id" })

  belongs_to(:stadium, { :required => true, :class_name => "Stadium", :foreign_key => "stadium_id" })

  belongs_to(:top_scorer, { :required => true, :class_name => "TopScorer", :foreign_key => "top_scorer_id" })

  belongs_to(:winning_coach, { :required => true, :class_name => "Coach", :foreign_key => "winning_coach_id" })
end
