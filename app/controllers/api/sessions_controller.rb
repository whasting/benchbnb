class Api::SessionsController < ApplicationController
  def create
  end

  def destroy
    user = current_user
    if user
      log_out
      render json: {}
    else
      render status: 404
    end
  end
end
