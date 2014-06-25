class CreateMateriales < ActiveRecord::Migration
  def change
    create_table :materiales do |t|
      t.string :id_material
      t.string :nombre
      t.string :descripcion
      t.string :cantidad

      t.timestamps
    end
  end
end
