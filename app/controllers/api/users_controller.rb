class Api::UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    p "USER_PARAMS vv"
    p user_params
    p "PARAMS vv"
    p params
    if @user.save!
      log_in(@user)
      render :show
    else
      render json: ['invalid credentials']
    end
  end

  def show
    @user = User.find(params[:id])
    if @user
      render :show
    else
      render json: @user.errors.full_messages
    end
  end

  private

  def user_params
    p "INSIDE PARAMS"
    params.require(:user).permit(:username, :password)
  end
end
