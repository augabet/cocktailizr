  class IngredientsController < ApplicationController
  
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