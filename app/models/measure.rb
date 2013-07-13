# == Schema Information
#
# Table name: measures
#
#  id            :integer          not null, primary key
#  ingredient_id :integer
#  number        :float
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Measure < ActiveRecord::Base
  attr_accessible :number
  belongs_to :ingredient

end
