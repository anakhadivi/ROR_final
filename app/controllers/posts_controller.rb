class PostsController < ApplicationController
	def index
		@posts = Post.all
	end
	def show
		@post = Post.find(params[:id])	
	end
	def new
		@post = Post.new
	end
	def create
		@post = Post.new(post_params)
		@post.user = current_user
		if @post.save
			flash[:notice] = 'Your post has been saved'
			redirect_to posts_path
		else
			flash[:alert] = 'There was a problem saving your post'
			redirect_to :back
		end

	end
def post_params
	params.require(:post).permit(:title, :location, :description, :image_file_name, :image_content_type, :image_file_size, :image_updated_at)
	
end
end