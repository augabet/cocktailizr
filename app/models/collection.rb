# == Schema Information
#
# Table name: collections
#
#  id            :integer          not null, primary key
#  user_id       :integer
#  ingredient_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Collection < ActiveRecord::Base
  attr_accessible :ingredient_id, :user_id

  belongs_to :ingredient
  belongs_to :user
end
