class SessionsController < ApplicationController
  skip_before_action :authenticate_user!, except: :destroy

  def new
  end

  def create
  end

  def destroy
  end
end
