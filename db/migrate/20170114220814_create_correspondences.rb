class CreateCorrespondences < ActiveRecord::Migration
  def change
    create_table :correspondences do |t|
      t.references :user, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true
      t.string :titulo
      t.text :descripcion
      t.date :inicio
      t.date :fin
      t.boolean :estado

      t.timestamps null: false
    end
  end
end
