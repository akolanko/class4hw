class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
		@profile = @user.profile
	end

	def destroy
		@user = User.where(id: params[:id]).first
		if @user && @user.destroy
			flash[:notice] = "User #{@user.username} destroyed sucessfully."
		else
			flash[:alert] = "There was a problem destroying that user."
		end
		redirect_to :back
	end	

end