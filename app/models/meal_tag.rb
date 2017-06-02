# == Schema Information
#
# Table name: meal_tags
#
#  id         :integer          not null, primary key
#  meal_id    :integer
#  tag_id     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class MealTag < ApplicationRecord

  belongs_to :meal
  belongs_to :tag

  validates :tag_id, :presence => true
  validates :meal_id, :presence => true
end
