class PostsController < ApplicationController
  def index
    @posts = Blog[current_subdomain].posts
  end

  def show
  end

  private
  def current_subdomain
    params[:current_subdomain] || Blog.first.subdomain
  end
end
