class SessionsController < ApplicationController

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.find_by_credentials(params[:user][:email], params[:user][:password])
    if @user
      login!(@user)
      redirect_to user_url(@user)
    else
      flash[:error] = ["Invalid email/password combo"]
    end
  end

  def destroy
    logout_user!
    redirct_to new_session_url
  end

  private

  def session_params
    params.require(:session)
  end
end
