class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "#{@user.username} Signed Up Successfully!"
      redirect_to supplies_path
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def index
    @users = User.all
  end
end

  
  
  private 
  
  def user_params
    params.require(:user).permit(:username, :password)
  end

  def set_user
    @user = User.find(params[:id])
  end
