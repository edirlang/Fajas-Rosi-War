class ActualizarProductos < ActiveRecord::Migration
  def change
  	change_table :productos do |t|
      dir.up   { 
      	t.descripcion :text
      	t.cantidad :integer
      	t.precio :integer
       }
      

      dir.down { 
      	t.descripcion :string
      	t.cantidad :string
      	t.precio :string
       }
   end
  end
end
