class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    @post.save
    redirect_to root_path
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
    params.require(:post).permit(:post_title, :post_body, :price, :category_id, :sub_category_id)
  end
end
