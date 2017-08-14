class CreateJoinTableShipDesignFleet < ActiveRecord::Migration[5.1]
  def change
    create_join_table :ShipDesigns, :Fleets do |t|
      # t.index [:ship_design_id, :fleet_id]
      # t.index [:fleet_id, :ship_design_id]
    end
  end
end
