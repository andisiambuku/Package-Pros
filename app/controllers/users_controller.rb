class UsersController < ApplicationController
    before_action :authorized, only: [:auto_login]

  # SIGNUP
  def create
    @user = User.create(user_params)
    if @user.valid?
      token = encode_token({user_id: @user.id})
      render json: {user: @user, token: token}
    else
      render json: {error: "Invalid fullname or password"}
    end
  end

  # LOGGING IN
  def login
    @user = User.find_by(fullname: params[:fullname])

    if @user && @user.authenticate(params[:password])
      token = encode_token({user_id: @user.id})
      render json: {user: @user, token: token}
    else
      render json: {error: "Invalid username or password"}
    end
  end


  def auto_login
    render json: @user
  end

  private

  def user_params
    params.permit(:fullname, :password, :phone_number, :email)
  end
end
