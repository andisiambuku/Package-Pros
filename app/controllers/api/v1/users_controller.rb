class Api::V1::UsersController < ApplicationController
    #create method in the users controller
    #creating a new user with the required params which are username, phone_number, password and email
    def create
        user = User.find_by(user_params)
        if user.valid?
            render json:{user: UserSerializer.new(user)}, status: :created
        else
            render json:{error: "Failed to create user"}, status: :unprocessable_entity
        end
    end

    private

    def user_params
        params.require(:user).permit( :full_name, :phone_number, :email, :password )
    # params(:full_name, :phone_number, :email, :password )
    end
end