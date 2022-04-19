class ApplicationController < ActionController::Base
  def require_user
    if !helpers.logged_in?
      flash[:notice] = "You must be logged in to perform this action."
      redirect_to login_path
    end
  end

end
