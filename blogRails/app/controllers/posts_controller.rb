class PostsController < ApplicationController

  def index
    @posts = Post.all
    # .search(params)
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to root_path
    else
      redirect_to upload_path
    end
  end

  def comment
    # com = Comment.new(
    #   name: params[:name],
    #   email: params[:email],
    #   content: params[:content]
    # ).call
    #
    # raise com.inspect
    # if com.save
    #   render json: {success: false, errors: message.errors}.to_json, status: 422
    # else
    #   redirect_to post_path(params[:id])
    # end

    redirect_to post_path(params[:id])
  end

private
  def post_params
    params.required(:post).permit(:title, :category_id, :content).merge(user_id: current_user.id)
  end

end
