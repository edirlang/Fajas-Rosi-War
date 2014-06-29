class CreateUsuarios < ActiveRecord::Migration
  def change
    create table :usuarios do |t|
      t.string :cedula
      t.string :nombre
      t.string :ciudad
      t.string :direccion
      t.string :telefono
      t.string :email
      t.string :contrasena

      t.timestamps
    end
  end
end
