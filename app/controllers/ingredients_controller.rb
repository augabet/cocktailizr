class IngredientsController < ApplicationController
  
  def new
    @ingredient = Ingredient.new
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def create
    @ingredient = Ingredient.create(params[:ingredient])
    redirect_to @ingredient
  
  end

  def update
  end

  def destroy
  end

end