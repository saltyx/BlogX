class AccountController < ApplicationController

  def index

  end

  def detail
    if session[:current_user] == nil
      redirect_to :controller => 'account'
    else

    end
  end

  def login
    if params[:user] == nil
      redirect_to :action => 'index'
    else
      @user = User.find_by_email(params[:user][:email])
      if @user != nil && @user.pwd == params[:user][:pwd]
        session[:current_user] = @user.email
        redirect_to root_path
      elsif @user == nil
        @hint = '此邮箱未注册'
      else
        @hint = '密码错误'
      end
    end
  end

  def logout
    session[:current_user] = nil
    redirect_to root_path
  end

end
