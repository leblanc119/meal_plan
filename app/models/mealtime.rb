# == Schema Information
#
# Table name: mealtimes
#
#  id         :integer          not null, primary key
#  time       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Mealtime < ApplicationRecord
  has_many :meal_plans, :dependent => :destroy
validates :time, :presence => true
end
