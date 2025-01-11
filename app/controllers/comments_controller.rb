class CommentsController < ApplicationController
  before_action :authenticate_user!

  # Create a new comment on a post
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(comment_params)
    @comment.user = current_user
    if @comment.save
      redirect_to post_path(@post), notice: 'Comment posted.'
    else
      render 'posts/show'
    end
  end

  def edit
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    redirect_to @post, alert: 'Not authorized' unless @comment.user == current_user
  end
  
  def update
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    if @comment.user == current_user
      if @comment.update(comment_params)
        redirect_to @post, notice: 'Comment updated successfully.'
      else
        render :edit
      end
    else
      redirect_to @post, alert: 'Not authorized'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :parent_id)
  end
end
