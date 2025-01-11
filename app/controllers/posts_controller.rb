class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  
  # Display all posts
  def index
    @posts = Post.all
  end
  
  # Display a single post and its comments
  def show
    # @post = Post.find(params[:id])
    # @comment = Comment.new
    # @comments = @post.comments.top_level_comments
    
    @post = Post.find(params[:id])
    @comments = @post.comments.includes(:user)
    @comment = @post.comments.build
  end
  
  # New post form
  def new
    @post = current_user.posts.build
  end
  
  # Create a new post
  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to post_path(@post), notice: 'Post created successfully.'
    else
      render :new
    end
  end
  
  # Edit post
  def edit
    @post = Post.find(params[:id])
    redirect_to posts_path, alert: 'Not authorized' unless @post.user == current_user
  end
  
  # Update post
  def update
    @post = Post.find(params[:id])
    if @post.user == current_user
      if @post.update(post_params)
        redirect_to @post, notice: 'Post updated successfully.'
      else
        render :edit
      end
    else
      redirect_to posts_path, alert: 'Not authorized'
    end
  end
  
  private
  
  def post_params
    params.require(:post).permit(:content, :image)
  end
end
