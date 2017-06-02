# == Schema Information
#
# Table name: favorites
#
#  id         :integer          not null, primary key
#  meal_id    :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Favorite < ApplicationRecord

  belongs_to :user
  belongs_to :meal

  validates :user_id, :presence => true
  validates :meal_id, :presence => true
end
