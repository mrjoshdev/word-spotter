class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def update
    @user = User.find params[:id]
    @user.update user_params
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = 'Welcome! You have signed up successfully.'
      redirect_to root_path
    else
      flash[:notice] = @user.errors.full_messages.join("\n")
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    @name = "#{@user.email}"
  end

  def admin_user
    redirect_to(root_url) unless current_user && current_user.admin?
  end

  private

  def user_params
    params.require(:user).permit(:username, :email)
  end

end
