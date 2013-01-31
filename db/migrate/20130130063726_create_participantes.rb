class CreateParticipantes < ActiveRecord::Migration
  def change
    create_table :participantes do |t|
      t.string :nombre
      t.string :ap_paterno
      t.string :ap_manterno
      t.string :sexo
      t.string :tipo_doc
      t.integer :num_doc
      t.string :direccion
      t.string :distrito
      t.string :correo
      t.date :fec_nac

      t.timestamps
    end
  end
end
