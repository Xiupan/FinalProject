class CreateSystems < ActiveRecord::Migration[5.1]
  def change
    create_table :systems do |t|
      t.string :name
      t.boolean :explored
      t.boolean :colonized
      t.text :description
      t.references :empire, foreign_key: true

      t.timestamps
    end
  end
end
