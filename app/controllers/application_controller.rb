class ApplicationController < ActionController::Base


  def login!(user)
    @user = user
    
  end

  def logout!

  end

  def current_user

  end


end
