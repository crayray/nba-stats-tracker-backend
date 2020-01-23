class UsersController < ApplicationController
    skip_before_action :authorized
    def index
        users = User.all
        render json: users
    end
    def profile
        puts "===user_controller: profile===="
       puts :user
        render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end
    def show
        @user = User.find(params[:id])
       if @user
          render json: {
            user: @user
          }
        else
          render json: {
            status: 500,
            errors: ['user not found']
          }
        end
      end
    def create
        @user = User.create(user_params)
        if @user.valid?
            @token = encode_token(user_id: @user.id)
            render json: {user: UserSerializer.new(@user), jwt: @token }, status: :created
        else
            render json: { error: 'failed to create user '}, status: :not_acceptable
        end    
    end


    private

    def user_params
        params.require(:user).permit(:username, :password)
    end
end