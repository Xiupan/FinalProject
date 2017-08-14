class CreateJoinTableSystemImprovement < ActiveRecord::Migration[5.1]
  def change
    create_join_table :Systems, :Improvements do |t|
      # t.index [:system_id, :improvement_id]
      # t.index [:improvement_id, :system_id]
    end
  end
end
