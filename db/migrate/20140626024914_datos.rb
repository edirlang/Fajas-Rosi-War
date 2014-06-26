class Datos < ActiveRecord::Migration
  def change
  	change_table :productos do |t|
      t.string :id_producto
      t.text :descripcion
      t.string :nombre
      t.integer :cantidad
      t.integer :precio

      t.timestamps
	end

	change_table :materiales do |t|
      t.string :id_material
      t.string :nombre
      t.text :descripcion
      t.integer :cantidad

      t.timestamps
    end
  end
end
