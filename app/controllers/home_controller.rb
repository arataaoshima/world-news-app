class HomeController < ApplicationController
  
  def top
    @posts = Post.search(params[:search]).paginate(page: params[:page], per_page: 3)
  end
end