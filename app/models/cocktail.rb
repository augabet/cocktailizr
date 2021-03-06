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
  attr_accessible :description, 
                  :name, 
                  :ingredient_ids,
                  :quantities_attributes

  validates :name, presence: true
  validates :description, presence: true


  has_many :quantities
  has_many :ingredients, through: :quantities
  
  accepts_nested_attributes_for :quantities
  accepts_nested_attributes_for :ingredients


  include PgSearch
	pg_search_scope :search, against: [:name, :description], 
	using: {tsearch: {:any_word => true}},
	associated_against: {ingredients: :name}
    

  def self.text_search(query)
    if query.present?
      dico=['jus','de','blanc']
      query = query.split(" ") - dico
      query.join(" ")
      search(query)
    else
      scoped
    end
  end

end
