class CocktailsController < ApplicationController
 
	def index
		@cocktails = Cocktail.text_search(params[:query])
		#@cocktails = Cocktail.all
	end

	def new
	  @cocktail = Cocktail.new
	end

	def show
	  @cocktail = Cocktail.find(params[:id])
	end

	def create
	  @cocktail = Cocktail.create(params[:cocktail])
	  redirect_to @cocktail
	end


end
