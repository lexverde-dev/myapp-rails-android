class CreateRegistroActividads < ActiveRecord::Migration[8.1]
  def change
    create_table :registro_actividads do |t|
      t.string :accion
      t.string :modelo
      t.integer :registro_id
      t.text :datos
      t.string :ip

      t.timestamps
    end
  end
end
