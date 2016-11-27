class UsersController < ApplicationController
	before_action :authenticate_user!, except: [:show]
	def show
		@user = User.find(params[:id])
		@posts = @user.posts.order("created_at DESC")
	end
	def destroy
		@post.destroy
		redirect_to root_path
	end
end
