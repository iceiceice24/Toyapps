class UsersController < ApplicationController
  before_action :authenticate_with_http_digest

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to posts_path
  else
      flash[:notice] = @user.errors.full_messages.to_sentence
      redirect_to root_path    
  end
end

def show
  @user = User.find(params[:id])
end

  def edit
    @user = current_user
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    session.clear
    flash[:success] = "User account and associated data has been deleted"
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password) 
  end
  
  def find_user
    @user = User.find_by(id: params[:id])
  end

end