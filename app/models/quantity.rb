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
  attr_accessible :dose, 
                  :ingredient,
                  :ingredient_attributes
  belongs_to :ingredient
  belongs_to :cocktail

  accepts_nested_attributes_for :ingredient


  def ingredient_attributes=(ingredient_attributes)
		ingredient = Ingredient.find_or_create_by_name(ingredient_attributes[:name].downcase)
		self.ingredient_id = ingredient.id
  end
end
