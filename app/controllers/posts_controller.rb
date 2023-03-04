class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    category_id = Category.find_by(category_name: post_params[:category_id].downcase).id
    sub_category_id = Category.find_by(category_name: post_params[:sub_category_id].downcase).id
    @post = Post.new(post_params)
    @post.category_id = category_id
    @post.sub_category_id = sub_category_id
    @post.user_id = current_user.id
    if @post.save
      redirect_to @post
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @post = Post.find(params[:id])
    @category = Category.find(@post.category_id)
    @category_name = @category.category_name.capitalize
    @sub_category = Category.find(@post.sub_category_id)
    @sub_category_name = @sub_category.category_name.capitalize
    @seller = User.find(@post.user_id)
  end

  private

  def post_params
    params.require(:post).permit(:post_title, :post_body, :price, :category_id, :sub_category_id, :photo)
  end
end
