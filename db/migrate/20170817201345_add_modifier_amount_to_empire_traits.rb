class AddModifierAmountToEmpireTraits < ActiveRecord::Migration[5.1]
  def change
    add_column :empire_traits, :modifier_amount, :bigint, null: true
  end
end
