# == Schema Information
#
# Table name: mealplans
#
#  id          :integer          not null, primary key
#  mealtime_id :integer
#  meal_id     :integer
#  plan_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Mealplan < ApplicationRecord
  belongs_to :meal
belongs_to :plan
belongs_to :mealtime

validates :plan_id, :presence => true
validates :mealtime_id, :presence => true
validates :meal_id, :presence => true
end
