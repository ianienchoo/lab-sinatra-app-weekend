class CreateScotchesTable < ActiveRecord::Migration
  def change
    create_table :scotches do |t|
      t.string :brand
      t.integer :year
      t.boolean :blended
      t.integer :rating

      t.timestamps
    end
  end
end
