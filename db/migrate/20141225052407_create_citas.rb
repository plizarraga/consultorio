class CreateCitas < ActiveRecord::Migration
  def change
    create_table :citas do |t|
      t.integer :paciente_id
      t.date :fecha
      t.time :hora_inicial
      t.time :hora_final
      t.text :descripcion

      t.timestamps null: false
    end
  end
end
