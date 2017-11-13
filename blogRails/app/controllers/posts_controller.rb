class PostsController < ApplicationController

  def index
    @posts = Post.all
    # .search(params)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @picture.save
      redirect_to '/'
    else
      redirect_to upload_path
    end
  end

private
  def post_params
    params.required(:post).permit(:title, :category_id, :content).merge(user_id: current_user.id)
  end

end
