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

  validates :name, presence: true,uniqueness: { case_sensitive: false }
  has_many :quantities
  has_many :collections
  has_many :cocktails, through: :quantities
  has_many :users, through: :collections


end
