class UsersController < ApplicationController

  def index

    @search = User.ransack(params[:q])
    if params[:q]
    @users = @search.result.page(params[:page])
    else
    @users = User.all.page(params[:page])
    end
    if current_user.role == "admin"
      flash[:notice] = "Sorry you cannot see other users"
      redirect_to cars_path
    end
  end

  def show
    @user = User.find(params[:id])
    unless current_user.id == @user.id
      flash[:notice] = "Sorry you cannot see someone else's page"
      redirect_to current_user
    end
  end

end
