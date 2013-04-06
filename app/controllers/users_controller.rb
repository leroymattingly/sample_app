class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def show
  	# raise params.inspect
  	@user = User.find(params[:id])
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
  		flash[:success] = "Welcome to the Sample App!"
  		redirect_to @user 		# rails can figure this out 
  	else
	  	render 'new'
	end
  end

end
