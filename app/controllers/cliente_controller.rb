class ClienteController < ApplicationController
  before_action :validacion, only: [:edit, :index]
  before_action :consultar, only: [:MiCuenta, :edit]

  def index
  	@productos = Producto.all
  end

  def MisProductos

  end

  def Carrito
  	
  end

  def MiCuenta
    
  end

  def edit

  end

  private

  def consultar
    @usuario = Usuario.find(session[:current_user_id])
  end
end
