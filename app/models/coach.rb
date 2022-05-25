# == Schema Information
#
# Table name: coaches
#
#  id         :integer          not null, primary key
#  coach_name :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  club_id    :integer
#
class Coach < ApplicationRecord

end
