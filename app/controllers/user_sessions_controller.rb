class UserSessionsController < ApplicationController
  def new; end

  def create
    user = login(params[:user_sessions][:email], params[:user_sessions][:password])
    if user
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    logout
    redirect_to root_path
  end
end
