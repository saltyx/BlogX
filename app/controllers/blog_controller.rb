class BlogController < ApplicationController
  def index
    if params[:id] != nil
      @blog = Blog.find(params[:id])
    end
  end

  def detail
    @blog = Blog.new
  end

  def new
    if session[:current_user] == nil
      redirect_to :controller => 'account'
    else
      @blog = Blog.new
    end
  end

  def create
    #保存当前的blog
    @blog = Blog.new(blog_params)
    @blog.time = Time.now
    if @blog.save
      @hint = 'saved successfully!'
    else
      @hint = @blog.errors
      render action: 'new'
    end
  end

  private

  def blog_params
    params.require(:blog).permit(:bno,:title,:author,:content,:time,:cno)
  end

end
