class CocktailsController < ApplicationController
 
	def index
		@cocktails = Cocktail.text_search(params[:query])
	end

	def new
	  	@cocktail = Cocktail.new
	end

	def show
	  	@cocktail = Cocktail.find(params[:id])
	end

	def create
		@cocktail = Cocktail.create(params[:cocktail])
		if @cocktail.save
			flash[:success] = "Cocktail ajoute"
			redirect_to @cocktail
		else 
			render 'new'
		end
	end
end
