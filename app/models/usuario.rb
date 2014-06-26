class Usuario < ActiveRecord::Base
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	validates :cedula, presence:true, numericality: { only_integer: true }, uniqueness: {case_sensitive: false ,message: "ya esta registrado"}
	validates :telefono, presence:true, numericality: { only_integer: true }
	validates :email, format: { :with => VALID_EMAIL_REGEX , message: "El formato del correo es invalido" }, presence:true, numericality: { only_integer: true }
end
