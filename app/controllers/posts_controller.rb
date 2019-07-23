class PostsController < ApplicationController
	def index
		@posts = Post.all
	end
	
	def new
	end
	
	def create
		post = Post.new
		post.title = params[:title]
		post.content = params[:content]
		post.save
		
		redirect_to "/"
	end
	
	def delete
		post = Post.find(params[:id])
		post.destroy
		
		redirect_to "/"
	end
	
	def edit
		@post = Post.find(param[:id])
	end
	
	def update
		@post = Post.find(param[:id])
		post.title = params[:title]
		post.content = params[:content]
		post.save
		
		redirect_to "/"
	end
	
	def comment_create
		comment = Comment.new
		comment.content = params[:content]
		comment.post_id = params[:post_id]
		comment.save
		
		redirect_to "/"
	end
end
