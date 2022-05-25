# == Schema Information
#
# Table name: coaches
#
#  id          :integer          not null, primary key
#  coach_image :string
#  coach_name  :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  club_id     :integer
#
class Coach < ApplicationRecord

  has_many(:seasons, { :class_name => "Season", :foreign_key => "winning_coach_id", :dependent => :destroy })

end
