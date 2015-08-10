class PostsController < ApplicationController

	def index

		@post = Post.all
		render :index

	end

	def new

		@post = Post.new

	end

	def create

		post = current_user.posts.create(post_params)
		redirect_to posts_path

	end

	def show

		@post = Post.find(params[:id])
		render :show

	end

	private
		def post_params
			params.require(:post).permit(:title, :content)
		end
end
