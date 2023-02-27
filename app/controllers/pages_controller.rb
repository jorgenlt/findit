class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :dashboard ]

  def dashboard
    if params[:query].present?
      @search_results = Post.search_posts(params[:query])
    else
      @search_results = nil
    end
  end
end
