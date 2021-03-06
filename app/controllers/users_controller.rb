class UsersController < ApplicationController

	def new
		@user = User.new
		render :new
	end

	def create
		@user = User.new(user_params)

		if @user.save
			session[:user_id] = @user.id 
			redirect_to profile_path
			flash[:notice] = "Whoo hoo you're logged in!"
		else
			redirect_to new_user_path
			flash[:error] = "Sorry, please try again"
		end

	end

	def show

		@user = User.find(session[:user_id])
		@post = Post.all
		render :show

	end

	private
		def user_params
			params.require(:user).permit(:first_name,:last_name,:email, :password)
		end

end
