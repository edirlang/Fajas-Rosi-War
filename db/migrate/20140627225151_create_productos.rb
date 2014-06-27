class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :id_producto
      t.text :descripcion
      t.string :nombre
      t.integer :cantidad
      t.integer :precio

      t.timestamps
    end
  end
end
