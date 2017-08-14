class CreateEmpireTraits < ActiveRecord::Migration[5.1]
  def change
    create_table :empire_traits do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
