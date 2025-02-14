class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  before_action :user_info_from_session
  before_action :confirm_logged_in

  private

  def user_info_from_session
    @username = cookies[:username]
    @user_id = session[:user_id]
  end

  def logged_in?
    session[:user_id].present?
  end

  def confirm_logged_in
    unless logged_in?
      flash[:notice] = "Please log in"
      redirect_to(login_path)
    end
  end
end
