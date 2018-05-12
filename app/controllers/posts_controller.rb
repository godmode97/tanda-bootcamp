class PostsController < ApplicationController
  def index
    user = User.where("id = #{current_user[:id]}")
    @user = user.first
    users = User.where("id != #{current_user[:id]}")
    @users = users
    @posts = Post.where("user_id = #{current_user[:id]}")
    puts @posts
  end
  
  def create
    users = User.where("id != #{current_user[:id]}")
    @users = users
    user = User.where("id = #{current_user[:id]}")
    @user = user.first
    post = Post.new
    post.contents = params[:contents]
    post.user_id = current_user[:id]
    post.save
    @posts = Post.where("user_id = #{current_user[:id]}")
    render :index
    puts current_user.to_json
    # puts post.errors.full_messages
  end

  def update
  end

  def delete
    Post.where("id = #{params[:id]}").destroy_all
    @posts = Post.where("user_id = #{current_user[:id]}")
    redirect_to "/posts"
  end

  def login
  end

  def add
  end

  def signup
  end
end
