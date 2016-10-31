class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def admin_required
    if !current_user.admin?
      flash[:alert] = 'you are not admin'
      redirect_to root_path
    end
  end

end
