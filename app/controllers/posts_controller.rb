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

end