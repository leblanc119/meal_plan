# == Schema Information
#
# Table name: plans
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  date       :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Plan < ApplicationRecord

  belongs_to :user
  has_many :mealplans, :dependent => :destroy

  validates :user_id, :presence => true
  validates :date, :uniqueness => { :scope => [:user_id] }
  validates :date, :presence => true
end
