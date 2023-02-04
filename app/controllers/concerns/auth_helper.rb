module AuthHelper
  extend ActiveSupport::Concern

  included do
    helper_method :user_signed_in?
    helper_method :current_user
  end

  def authenticate_user!
    redirect_to new_session_path unless user_signed_in?
  end

  def user_signed_in?
    current_user.present?
  end

  def current_user
    if cookies.encrypted[:user_id]
      @user ||= User.find(cookies.encrypted[:user_id])
    end
  rescue => e
    cookies.delete(:user_id)
  end

  def sign_in(user)
    cookies.encrypted[:user_id] = user.id
  end

  def sign_out!
    cookies.delete(:user_id)
  end
end
