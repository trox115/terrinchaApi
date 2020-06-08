class ClientesController < ApplicationController
  def create
    user = Cliente.create!(register_params)

    if user
      session[:user_id] = user.id
      render json: {
        status: :created,
        user: user
      }
    else
      render json: {
        status: 500
      }
    end

  end

  private

  def register_params
    params.require(:user).permit(:email,:name, :phone,:password, :password_confirmation)
  end
end
