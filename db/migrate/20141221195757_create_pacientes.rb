class CreatePacientes < ActiveRecord::Migration
  def change
    create_table :pacientes do |t|
      t.string :nombre
      t.string :correo_electronico
      t.integer :edad

      t.timestamps null: false
    end
  end
end
