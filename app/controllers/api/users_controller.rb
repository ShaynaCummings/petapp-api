module Api
  class UsersController < ApplicationController
    # before_filter :authenticate, only: [:index]

    def index
      render json: User.all
    end

    def show
      @user = User.find(params[:id])
      render json: @user
    end

    def create
      @user = User.new(user_params)
      if @user.save
        render json: @user
      else
        render json: {message: 'not saved', status: 500}
      end
    end

    def user_params
      params.require(:user).permit(:name, :email, :password_digest, :token)
    end

  end
end
