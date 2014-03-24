class PostsController < ApplicationController

	def all
		@posts = Post.all
	end

	def index
		@user = User.find(params[:user_id])
		@posts =@user.posts.all
	end

	def show
		@user = User.find(params[:user_id])
		@post = Post.find(params[:id])
	end

	def destroy
		@post = Post.where(id: params[:id]).first
		if @post && @post.destroy
			flash[:notice] = "Post deleted sucessfully."
		else
			flash[:alert] = "There was a problem deleting that post."
		end
		redirect_to "/posts"
	end

end