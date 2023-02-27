class CategoriesController < ApplicationController

  def show
    @category = Category.find(params[:id])
    @sub_categories = Category.where(parent_category_id: params[:id])
    @posts = Post.where(category_id: params[:id])
  end

  def show_sub
    # @parent_category = Category.find(params[:id])
    @sub_category = Category.find(params[:category_id])
    @category = Category.find(params[:category_id])
    @sub_categories = Category.where(parent_category_id: params[:id])
    @posts = Post.where(category_id: params[:id], sub_category_id: params[:category_id])
  end
end
