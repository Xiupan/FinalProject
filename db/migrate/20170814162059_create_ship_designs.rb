class CreateShipDesigns < ActiveRecord::Migration[5.1]
  def change
    create_table :ship_designs do |t|
      t.string :name
      t.text :description
      t.string :chassis
      t.string :weapon1
      t.string :weapon2
      t.string :weapon3
      t.string :bombs
      t.string :armor
      t.string :shields
      t.string :engines
      t.string :sensors
      t.string :option1
      t.string :option2
      t.references :empire, foreign_key: true
      t.references :fleet, foreign_key: true
      t.references :technology, foreign_key: true
      t.references :resource, foreign_key: true

      t.timestamps
    end
  end
end
