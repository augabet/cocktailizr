class StaticPagesController < ApplicationController
 

  def home
  	@cocktails = Cocktail.all
  end
end
