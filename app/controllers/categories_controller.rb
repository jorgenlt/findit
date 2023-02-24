class CategoriesController < ApplicationController

  def show
    @category = Category.find(params[:id])
    @sub_categories = Category.where(parent_category_id: params[:id])
  end

  def show_sub
    raise
    # @sub = Category.find(params[:id])
  end

end
