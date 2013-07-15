class CocktailsController < ApplicationController
    before_filter :authenticate_user!, only: [:create, :new]
	before_filter :admin_authorization, only: [:create, :new]


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


	private

	def admin_authorization
	 	redirect_to root_url unless current_user.admin?
	end 
end
