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

end
