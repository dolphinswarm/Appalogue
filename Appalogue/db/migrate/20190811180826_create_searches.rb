class CreateSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :searches do |t|
      t.string :keywords
      t.string :description
      t.string :version
      t.string :orgname
      t.decimal :price, precision: 6, scale: 2
      t.string :platform

      t.timestamps
    end
  end
end
