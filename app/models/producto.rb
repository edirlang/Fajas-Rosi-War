class Producto < ActiveRecord::Base
	
	after_save :guardar_foto

	Fotos = File.join Rails.root, 'public', 'foto_store'
	
	#Validaciones
	validates :cantidad, presence:true, numericality: { only_integer: true }
	validates :precio, presence:true, numericality: { only_integer: true }
	validates :descripcion, presence:true
	validates :id_producto, uniqueness: {case_sensitive: false ,message: "Producto ya registrado"}

	def foto=(file_data)
		unless file_data.blank?
			@file_data = file_data
			@extension = "jpg"
		end
	end

	def foto_filename
		File.join Fotos,"#{id}.jpg"
	end

	def foto_path
		"/foto_store/#{id}.jpg"
	end
	def has_foto?
		File.exists? foto_filename
	end
	
	private

	def guardar_foto
		if @file_data
			FileUtils.mkdir_p Fotos
			File.open(foto_filename, "wb") do |f|
				f.write(@file_data.read)
			end
			@file_data = nil
		end
	end
end
