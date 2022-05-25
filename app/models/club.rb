# == Schema Information
#
# Table name: clubs
#
#  id            :integer          not null, primary key
#  club_name     :string
#  country       :string
#  founding_year :string
#  logo          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  stadium_id    :integer
#
class Club < ApplicationRecord

end
