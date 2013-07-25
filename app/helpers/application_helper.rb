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

  def flash_class(level)
    case level
    when :notice then "alert alert-info"
    when :success then "alert alert-success"
    when :error then "alert alert-error"
    when :alert then "alert alert-error"
    end
  end


  def perfect_match(query, cocktail)
    if query != nil
      tabquery = query.split(" ").map { |i| i.to_s} 
      tabingredient = Array.new 
      cocktail.ingredients.each do |ingredient|
        tabingredient += ingredient.name.split(" ")
      end 
      resultat =   tabingredient - tabquery
    else 
      resultat = "ingredient"
    end
  end

  def mesure_ingredient_cocktail(query, cocktail)
    if query != nil
      tabquery = query.split(" ").map { |i| i.to_s} 
      tabingredient = Array.new 
      cocktail.ingredients.each do |ingredient|
         tabingredient += ingredient.name.split(" ")
      end
      nombre_ingredient_cocktail = tabingredient.length
      difference_inguser_vs_ingcocktail = tabingredient - tabquery
      nombre_ingredient_difference = difference_inguser_vs_ingcocktail.length
      nombre_ingredient_cocktail == nombre_ingredient_difference
     # tabingredient
    end
  end
 
end