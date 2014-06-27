class CreateMateriales < ActiveRecord::Migration
  def change
    create_table :materiales do |t|
      t.string :id_material
      t.string :nombre
      t.text :descripcion
      t.integer :cantidad

      t.timestamps
    end
  end
end
