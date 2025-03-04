class SessionsController < ApplicationController

  def create
    user = User.find_by(username: params[:username])
    session[:user_id] = user.id
    render json: user
  end

  def delete
    session.destroy
    head :no_content, status: :no_content
  end

end
