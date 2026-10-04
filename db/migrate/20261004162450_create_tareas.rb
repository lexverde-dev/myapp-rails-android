class CreateTareas < ActiveRecord::Migration[8.1]
  def change
    create_table :tareas do |t|
      t.string :titulo
      t.boolean :completada

      t.timestamps
    end
  end
end
