class SessionsController < ApplicationController
  def new
    
  end

  def create
    
  	if usuario = Usuario.find_by( cedula: params[:cedula], contrasena: params[:contrasena])
  		session[:current_user_id] = usuario.id
  		redirect_to  usuarios_path
  	else
      redirect_to root_url
      flash[:notice] = "Login Incorecto"
  	end
  end

  def destroy
  	@_current_user = session[:current_user_id] = nil
    redirect_to root_url
  end

  def CrearUsuario
    @usuario = Usuario.new
    redirect_to  '/usuarios/new'
  end
end
