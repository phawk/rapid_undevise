class ApplicationController < ActionController::Base
  # include AuthHelper
  before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[display_name])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[display_name])
  end
end
