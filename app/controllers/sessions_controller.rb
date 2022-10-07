class SessionsController < ApplicationController
  
  def create
    user = User.find_by_username(params[:username])

    if user
      session[:user_id] = user.id
      render json: user
    end
  end
end
