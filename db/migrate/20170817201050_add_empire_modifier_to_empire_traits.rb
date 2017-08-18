class AddEmpireModifierToEmpireTraits < ActiveRecord::Migration[5.1]
  def change
    add_column :empire_traits, :empire_modifier, :string, null: true
  end
end
