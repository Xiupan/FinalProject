class CreateJoinTableEmpireResource < ActiveRecord::Migration[5.1]
  def change
    create_join_table :Empires, :Resources do |t|
      # t.index [:empire_id, :resource_id]
      # t.index [:resource_id, :empire_id]
    end
  end
end
