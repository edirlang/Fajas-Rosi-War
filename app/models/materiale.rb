class Materiale < ActiveRecord::Base
	validates :cantidad, presence: true, numericality: { only_integer: true } 
	validates :id_material, uniqueness: {case_sensitive: false ,message: "Esta id_material esta siendo usada por otro material"}
	validates :nombre, presence: true
end