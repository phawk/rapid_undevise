class SignupsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @user = User.new
  end

  def create
  end

  private

  def user_params
    params.require(:user).permit(:display_name, :email, :password, :password_confirmation)
  end
end
