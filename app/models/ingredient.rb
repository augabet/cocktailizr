# == Schema Information
#
# Table name: ingredients
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Ingredient < ActiveRecord::Base
  attr_accessible :name
  validate :name, presence: true
  has_many :quantities
  has_many :cocktails, through: :quantities


	def self.tokens(query)
	  ingredients = where("name like ?", "%#{query}%")
	  if ingredients.empty?
	    [{id: "<<<#{query}>>>", name: "New: \"#{query}\""}]
	  else
	    ingredients
	  end
	end

	def self.ids_from_tokens(tokens)
	  tokens.gsub!(/<<<(.+?)>>>/) { create!(name: $1).id }
	  tokens.split(',')
	end


end
