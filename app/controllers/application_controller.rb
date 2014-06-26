class ApplicationController < ActionController::Base
  protect_from_forgery

  def validacion
      unless session[:current_user_id]
        redirect_to '/', notice: 'Inicia Secion por favor' 
      end
  end

  private
 
  def current_user
    @_current_user ||= session[:current_user_id] &&
      User.find(session[:current_user_id])
  end
end
