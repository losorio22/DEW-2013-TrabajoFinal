class CreateTorneos < ActiveRecord::Migration
  def change
    create_table :torneos do |t|
      t.string :nombre
      t.integer :cant_part
      t.date :fecha
      t.datetime :hora
      t.references :local

      t.timestamps
    end
    add_index :torneos, :local_id
  end
end
