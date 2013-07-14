class UsersController < ApplicationController
  def show
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id]) 
    if @user.update_attributes(params[:user])
      redirect_to @user, notice: "Bien ajoute a la collection"
    else
      render :edit
    end
  end


end
