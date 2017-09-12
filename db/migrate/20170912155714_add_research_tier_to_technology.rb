class AddResearchTierToTechnology < ActiveRecord::Migration[5.1]
  def change
    add_column :technologies, :tier, :integer, null: false, :default => 1
  end
end
