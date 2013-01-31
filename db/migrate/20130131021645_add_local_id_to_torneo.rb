class AddLocalIdToTorneo < ActiveRecord::Migration
  def change
    add_column :torneos, :local_id, :integer

  end
end
