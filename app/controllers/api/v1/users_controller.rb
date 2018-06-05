class Api::V1::UsersController < ApplicationController
  #this controller is for the creation of new users.
# before_action :get_user, only: [:show, :edit, :update, :destroy]
# before_action :authorized, only: [:edit, :update, :destroy, :show]


  def generate_token(user)
    user_id = user.id
    JWT.encode({user_id: user_id}, "super_secret_password", 'HS256')
  end


  def new
    @user = User.new
  end

  def create
    @user = User.new

    redner json: {
      username: @user.username,
      token: generate_token(@user)
    }

  end



  private

  def user_params
    params.require(:user).permit(
      :name,
      :password,
      :password_confirmation
    )
  end

  def get_user
    @user = User.find(params[:id])
  end


end
