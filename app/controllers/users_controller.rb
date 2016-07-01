class UsersController < ApplicationController
  def new
    @user = User.new
  end
def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user 
            flash[:success] = "Yaay! you're in!"
    else
      render 'new'
    end
  end
def show
  @user = User.find(params[:id])
end
def index

end
  private

  def user_params
    params.require(:user).permit(:username,
                                 :email,
                                 :password,
                                 :password_confirmation)
  end
end
