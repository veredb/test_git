class UsersController < ApplicationController
  def new
      @user = User.new()
  end
  def create
      @user = User.create(user_params)
      if @user.save
         redirect_to '/index'
      else
         render 'new'
      end
  end

  def show
  end

  def delete
  end

  def update
  end
  def index
      @user = User.new
      @users = User.all
  end

private
     def user_params
         params.require(:user).permit(:name, :email)
     end
end
