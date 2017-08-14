class CreateJoinTableEmpireEmpireTraits < ActiveRecord::Migration[5.1]
  def change
    create_join_table :Empires, :EmpireTraits do |t|
      # t.index [:empire_id, :empire_trait_id]
      # t.index [:empire_trait_id, :empire_id]
    end
  end
end
