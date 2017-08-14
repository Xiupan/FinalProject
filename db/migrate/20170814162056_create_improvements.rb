class CreateImprovements < ActiveRecord::Migration[5.1]
  def change
    create_table :improvements do |t|
      t.string :name
      t.text :description
      t.decimal :base_time
      t.references :technology, foreign_key: true
      t.references :resource, foreign_key: true

      t.timestamps
    end
  end
end
