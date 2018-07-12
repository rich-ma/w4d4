class UsersController < ApplicationController

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.new(user_params)
    if @user.save!
      login!(@user)
      #redirct_to bands_url
    else
      flash[:error] = ["Invalid username/password combo"]
      render :new
    end
  end

  def show
    render :show
  end


  private

  def user_params
    params.require(:users).permit(:email, :password)

  end

end
