class PostsController < ApplicationController
    def index
        @posts = Post.all
    end
    
    def new 
        @post = Post.new
    end
    
    def create
        @post = Post.find(params[:id])
        @post.user_id = 
        if @post.update
            redirect_to root_path
        else
            render 'new'
        end
    end

    private
        def post_params
            params.require(:post).permit(:title , :body)
        end
end
