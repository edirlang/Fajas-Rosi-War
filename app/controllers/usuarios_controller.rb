class UsuariosController < ApplicationController
  before_action :set_usuario, only: [:show, :edit, :update, :destroy]
  before_action :validacion, only: [:show, :edit, :update, :destroy, :index]
  # GET /usuarios
  # GET /usuarios.json
  def index
    @usuarios = Usuario.all
  end

  # GET /usuarios/1
  # GET /usuarios/1.json
  def show
  end

  # GET /usuarios/new
  def new
    @usuario = Usuario.new
    render :layout => 'nuevo' 
  end

  # GET /usuarios/1/edit
  def edit
    
  end

  # POST /usuarios
  # POST /usuarios.json
  def create
    @usuario = Usuario.new(usuario_params)
    respond_to do |format|
      if @usuario.save

        format.html { redirect_to new_sessions_path, notice: 'Su cuenta a sido creada.' }
        format.json { render action: 'show', status: :created, location: @usuario }
      else 
        format.html { render action: 'new', layout:'cliente'}
        format.json { render json: @usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usuarios/1
  # PATCH/PUT /usuarios/1.json
  def update

    usuario = Usuario.find(session[:current_user_id])
    unless usuario.cedula == "1020"
      platilla = 'cliente'
     else
      platilla = 'application'
    end
    respond_to do |format|
      if @usuario.update(usuario_params)
        format.html { redirect_to '/signin', notice: 'Su datos se han acctualizado.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit', layout:platilla }
        format.json { render json: @usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuarios/1
  # DELETE /usuarios/1.json
  def destroy
    @usuario.destroy
    respond_to do |format|
      format.html { redirect_to usuarios_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario
      @usuario = Usuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuario_params
      params.require(:usuario).permit(:cedula, :nombre, :ciudad, :direccion, :telefono, :email, :contrasena)
    end
end
