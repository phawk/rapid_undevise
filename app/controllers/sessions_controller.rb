class SessionsController < ApplicationController
  skip_before_action :authenticate_user!, except: :destroy

  def new
  end

  def create
    user = User.find_by(email: params[:email])

    if user&.authenticate(params[:password])
      sign_in(user)
      redirect_to root_path, notice: "Signed in successfully!"
    else
      flash[:alert] = "Invalid email or password"
      redirect_to new_session_path
    end
  end

  def destroy
    sign_out!
    redirect_to new_session_path, notice: "Logged out successfully!"
  end
end
