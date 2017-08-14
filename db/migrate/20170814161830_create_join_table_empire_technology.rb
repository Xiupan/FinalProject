class CreateJoinTableEmpireTechnology < ActiveRecord::Migration[5.1]
  def change
    create_join_table :Empires, :Technologies do |t|
      # t.index [:empire_id, :technology_id]
      # t.index [:technology_id, :empire_id]
    end
  end
end
