class PostsController < ApplicationController
  # before_action :ensure_current_user
   def home
       @posts = Post.all
   end

  
  def index
     @posts = current_user.posts
  end

  def show
      find_post
  end

  def new
      @post = Post.new 
  end

  def create
       @post = current_user.posts.new(post_params)
      # @post.user_id = current_user.id
      # @post = Post.new(post_params)
     
      if @post.save
          redirect_to '/posts', notice: 'Created'
      else
          redirect_to '/posts', notice: 'Error'
      end

  end

  def edit
      find_post
  end

  def update
      find_post
          if @post.update(post_params)
             
              redirect_to '/posts', notice: 'Updated'
          else
              render :edit
      end
  end

  def destroy
      find_post
      @post.destroy
      redirect_to '/posts', notice: 'Deleted' 
  end

  private

  # def set_post
  #     @post = current_user.posts.find(params[:id])
  # end


  def post_params
      params.require(:post).permit(:toyName, :content, :price, :email)
  end

  def find_post
      @post = Post.find_by(id: params[:id])
  end
end

