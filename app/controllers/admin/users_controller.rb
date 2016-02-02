class Admin::UsersController < Admin::AdminController
  before_action :get_user, only: [:show, :edit, :update, :destroy]

  def new
    @user = User.new
  end

  def index
    @users = User.all
  end

  def show

  end

  def edit
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to admin_users_path
    else
      render :new
    end
  end

  def update
    if @user.update_attributes(user_params)
      redirect_to admin_users_path
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to admin_users_path
  end

  private

  def get_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :age, :sex)
  end
end
