class AddDefaultValuesToSystems < ActiveRecord::Migration[5.1]
  def change
    change_column :systems, :explored, :boolean, :default => false
    change_column :systems, :colonized, :boolean, :default => false
    change_column :systems, :empire_id, :bigint, default: 1
  end
end
