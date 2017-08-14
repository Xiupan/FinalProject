class CreateFleets < ActiveRecord::Migration[5.1]
  def change
    create_table :fleets do |t|
      t.string :name
      t.references :empire, foreign_key: true

      t.timestamps
    end
  end
end
