# == Schema Information
#
# Table name: quantities
#
#  id            :integer          not null, primary key
#  dose          :float
#  cocktail_id   :integer
#  ingredient_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Quantity < ActiveRecord::Base
  belongs_to :ingredient
  belongs_to :cocktail

end
