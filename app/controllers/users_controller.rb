class UsersController < ApplicationController
 before_filter :authenticate_user!
 before_filter :user_authorization



  def show
  end

  def edit

  	@user = User.find(current_user[:id])

  end

  def update

    @user = User.find(params[:id]) 

    if @user.update_attributes(params[:user])
      redirect_to @user, notice: "Bien ajoute a la collection"
    else
      render :edit
    end
  end

  private

     def user_authorization
         redirect_to root_url unless current_user.id.to_s == params[:id].to_s
     end  
end
