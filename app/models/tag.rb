# == Schema Information
#
# Table name: tags
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Tag < ApplicationRecord

  has_many :meal_tags, :dependent => :destroy

  validates :name, :presence => true
  validates :name, :uniqueness => true
end
