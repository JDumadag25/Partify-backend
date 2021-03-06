require 'jwt'

class UsersController < ApplicationController
  #this controller is for the creation of new users.

  def index
    @users = User.all
    render json: @users
  end



  def create
    @user = User.new

    @user.username = params[:username]
    @user.password = params[:password]


    if (@user.save)
       render json: token_json(@user)
    else
     render json: {
       errors: @user.errors.full_messages
     }
    end

  end


end
