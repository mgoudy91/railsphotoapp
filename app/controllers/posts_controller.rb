class PostsController < InheritedResources::Base
	def index
		@posts = Post.order("title").page(params[:page]).per(5)
	end
	
	def recent
		@recent_posts = Post.recent
	end
end
