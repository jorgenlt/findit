class CategoriesController < ApplicationController

  def show
    # raise
    @category = Category.find(params[:id])
    @sub_categories = Category.where(parent_category_id: params[:id])
  end

  def show_sub
    # raise
    @sub_category = Category.find(params[:category_id])
    @parent_category = Category.find(params[:id])
  end
end
