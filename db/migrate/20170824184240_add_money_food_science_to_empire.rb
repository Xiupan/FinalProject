class AddMoneyFoodScienceToEmpire < ActiveRecord::Migration[5.1]
  def change
    add_column :empires, :money, :decimal, null: false, :default => 0
    add_column :empires, :food, :decimal, null: false, :default => 0
    add_column :empires, :science, :decimal, null: false, :default => 0
  end
end
