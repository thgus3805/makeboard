class HomeController < ApplicationController
      def index
      end
      
      def create
          @post = Post.new
          @post.db_title = params[:title]
          @post.db_content = params[:content]
          @post.save
          
          redirect_to '/read'
      end
      
      def read
          @posts = Post.all
      end
      def destroy
          @one_post = Post.find(params[:id])
          @one_post.destroy
          
          redirect_to '/read'
      end
      def update_view
          @one_post = Post.find(params[:id])
      end
      def update_real
          @one_post = Post.find(params[:id])
          @one_post.db_title = params[:title]
          @one_post.db_content = params[:content]
          @one_post.save
          
          redirect_to '/read'
  end
end
