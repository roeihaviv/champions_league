# == Schema Information
#
# Table name: top_scorers
#
#  id              :integer          not null, primary key
#  number_of_goals :integer
#  player_image    :string
#  player_name     :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  club_id         :integer
#  season_id       :integer
#
class TopScorer < ApplicationRecord
  
  belongs_to(:club, { :required => true, :class_name => "Club", :foreign_key => "club_id" })

  has_many(:seasons, { :class_name => "Season", :foreign_key => "top_scorer_id", :dependent => :destroy })
end
