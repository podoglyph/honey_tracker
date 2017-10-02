class UsersController < ApplicationController

  def new
    @user = User.new
    @return_path = params[:return] if params[:return]
  end

  def create
    @user = User.new(user_params)
    binding.pry
    if @user.save
      session[:user_id] = @user.id
      redirect_to return_params
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :password)
  end

  def return_params
    params.require(:user).permit(:return)[:return]
  end

end
