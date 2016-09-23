class WelcomeController < ApplicationController

  def index

  end

  def list
    #列出所有类别
    @category = Category.all;

  end

  def category
    #根据类别查到所有blog
    @blogs = Blog.where(:cno => params[:cno]).order("time desc")

  end

  private

end
