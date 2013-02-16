class RemoveFechaFromTorneo < ActiveRecord::Migration
  def up
    remove_column :torneos, :fecha
      end

  def down
    add_column :torneos, :fecha, :date
  end
end
