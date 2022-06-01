# == Schema Information
#
# Table name: clubs
#
#  id            :integer          not null, primary key
#  club_name     :string
#  country       :string
#  founding_year :string
#  logo          :string
#  stadium       :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  stadium_id    :integer
#
class Club < ApplicationRecord
 
  has_many(:seasons, { :class_name => "Season", :foreign_key => "winning_club_id", :dependent => :destroy })

  has_many(:top_scorers, { :class_name => "TopScorer", :foreign_key => "club_id", :dependent => :destroy })

  has_many :bookmarks

  has_many :bookmarkers, :through => :bookmarks, :source => :users

end
