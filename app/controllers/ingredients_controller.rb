  class IngredientsController < ApplicationController
     before_filter :authenticate_user!, only: [:create]
      before_filter do 
        redirect_to root_url unless current_user.admin?
      end

  def index
    @ingredients = Ingredient.order(:name)

  end


  def new
    @ingredient = Ingredient.new
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def create
    @ingredient = Ingredient.new(params[:ingredient])
    if @ingredient.save
      flash[:success] ="Ingredient ajoute"
      redirect_to @ingredient
    else
      render 'new'
    end
  end

  def update
  end

  def destroy
  end

end