class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.text :descripcion
      t.integer :dia

      t.timestamps null: false
    end
  end
end
