class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def show
    @user = User.find(params[:id])
  end
  def edit
    @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
       redirect_to user_path(@user.id)
    else
      flash[:error]=@user.errors.full_messages
      redirect_to edit_user_path(@user.id)
    end
  end
  private
  def user_params
    params.require(:user).permit(:name,:introduction,:profile_image)
  end
end
