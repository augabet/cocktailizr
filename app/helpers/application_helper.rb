module ApplicationHelper
# Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Cocktailizr"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end


  def perfect_match(query, cocktail)
    if query != nil
      tabquery = query.split(" ").map { |i| i.to_s} 
      tabingredient = Array.new 
      cocktail.ingredients.each do |ingredient|
        tabingredient.push(ingredient.name) 
      end 
      resultat =   tabingredient - tabquery
    else 
      resultat = "ingredient"
    end
  end


  
end