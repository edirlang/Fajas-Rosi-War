class Producto < ActiveRecord::Base
	
	validates :cantidad, presence:true, numericality: { only_integer: true }
	validates :precio, presence:true, numericality: { only_integer: true }
	validates :descripcion, presence:true
	validates :id_producto, uniqueness: {case_sensitive: false ,message: "Producto ya registrado"}

end
