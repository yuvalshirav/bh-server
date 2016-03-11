class UserController < ApplicationController

  def create
    user = User.create(strong_params)
    render json: user
  end

  def update
    user = User.find(params[:id])
    user.update_attributes(strong_params)
    render json: user
  end

  def strong_params
    params.permit(:gender)
  end
end
