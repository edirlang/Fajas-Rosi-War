class CreateProductos < ActiveRecord::Migration
  def change
    create table :productos do |t|
      t.string :id_producto
      t.string :descripcion
      t.string :nombre
      t.string :cantidad
      t.string :precio

      t.timestamps
    end
  end
end
