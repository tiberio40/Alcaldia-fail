class CreatePrivileges < ActiveRecord::Migration
  def change
    create_table :privileges do |t|
      t.string :titulo
      t.boolean :crearUsuario
      t.boolean :crearPeticion
      t.boolean :crearRespuesta

      t.timestamps null: false
    end
  end
end
