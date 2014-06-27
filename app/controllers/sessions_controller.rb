class SessionsController < ApplicationController
  def new
    
  end

  def create
    
  	if usuario = Usuario.find_by( cedula: params[:cedula], contrasena: params[:contrasena])
  		session[:current_user_id] = usuario.id
  		if usuario.cedula == "1020"
        redirect_to  presentacion_path
        
        else
          redirect_to cliente_path
      end
      
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
