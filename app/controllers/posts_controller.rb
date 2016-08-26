class PostsController < ApplicationController
  def index 
    @posts = Post.all
    @tags = Tag.all
  end

  def show 
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(listed_params)
    if @post.save
      redirect_to post_path(@post)
    else
      rerender :new
    end
  end

  def edit 
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update_attributes(listed_params)
    redirect_to post_path
  end

  private
  def listed_params
    params.require(:post).permit(:title, :body, {:tag_ids => []}, {:tags => []})
  end

end
