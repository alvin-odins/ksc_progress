class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
      if @user.save
        byebug
        login params[:username]
        render :registersuccess
      else
        flash[:danger] = 'your have not filed your details'
        render :new
      end
    end
  end

  def show
  end

  private
  def user_params
    params.require(:user).permit(
      :first_name,
      :last_name,
      :email,
      :username,
      :password,
      :password_confirmation,
      :c_number,
      :gender,
      :dob,
      :curr_address,
      :perm_address,
      :country,
      :city,
      :course,
      :university,
      :source
    )
end
