class UsersController < ApplicationController

    def index
        @users = User.all
        render json: @users, status: :ok
    end

    def show
        @user = User.find(params[:id])
        render json: @user, status: :ok
    end

    def create
        @user = User.new(user_params)
        if @user.save
            render json: @event, status: :created
        else
            render json: { errors: @event.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def update
        @user = User.find(params[:id])
    end

    
    private

    def user_params
        params.require(:user).permit(:username, :password_digest, :name, :email)
    end
end
