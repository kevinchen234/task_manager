class AccessController < ApplicationController
  layout "application"
  skip_before_action :confirm_logged_in, only: [ :new, :create ]

  def menu
  end

  def new
    if logged_in?
      redirect_to(menu_path)
    end
  end

  def create
    logger.info("*** Login User #{params[:username]}")
    cookies[:username] = params[:username]
    session[:user_id] = 1
    flash[:notice] = "Log in successful"
    redirect_to(menu_path)
  end

  def destroy
    logger.info("*** Logout User #{cookies[:username]}")
    cookies[:username] = nil
    session[:user_id] = nil
    flash[:notice] = "Logged out"
    redirect_to(login_path)
  end
end
