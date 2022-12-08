class AuthController < ApplicationController
    before_action :authorized, only: [:create]

    def create
        @user = User.find_by(fullname: login_params[:fullname])
        if @user && @user.authenticate(login_params[:password])
            token = encode_token(user_id: @user.id)
            render json: { user: UserSerializer.new(@user), jwt: token }, status: :accepted
        else
            render json: { error: 'Invalid username or password' }, status: :unauthorized
        end
    end

    private

    def login_params
        params.require(:user).permit(:fullname, :password)
    end

end
