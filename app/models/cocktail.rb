# == Schema Information
#
# Table name: cocktails
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Cocktail < ActiveRecord::Base
  attr_accessible :description, :name, :ingredient_ids
  validate :name, presence: true
  validate :description, presence: true

  has_many :quantities
  has_many :ingredients, through: :quantities

end
