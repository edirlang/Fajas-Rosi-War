class Usuario < ActiveRecord::Base
	validates :cedula, presence:true, numericality: { only_integer: true }, uniqueness: {case_sensitive: false ,message: "ya esta registrado"}
	validates :telefono, presence:true, numericality: { only_integer: true }
	validates :email, presence: true
	validates :contrasena, presence:true
end
