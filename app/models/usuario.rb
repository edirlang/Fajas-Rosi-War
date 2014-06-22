class Usuario < ActiveRecord::Base
  attr_accessible :cedula, :ciudad, :contrasena, :direccion, :email, :nombre, :telefono
end
