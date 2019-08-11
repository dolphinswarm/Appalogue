class CreateApps < ActiveRecord::Migration[5.2]
  def change
    create_table :apps do |t|
      t.string :name
      t.text :description
      t.string :version
      t.string :orgName
      t.decimal :price, precision: 6, scale: 2
      t.string :platform
      t.boolean :approved

      t.timestamps
    end
  end
end
