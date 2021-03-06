class UsersController < ApplicationController

  def index
  	@users = User.all
  	@result = request.location
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  	  # @result = request.location
  	  redirect_to root_path
  	else 
  	  render :new
  	end
  end

  private
  def user_params
  	params.require(:user).permit(:name)
  	
  end

end
