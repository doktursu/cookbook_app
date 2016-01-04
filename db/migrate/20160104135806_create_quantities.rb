class CreateQuantities < ActiveRecord::Migration
  def change
    create_table :quantities do |t|
      t.references :recipe, index: true, foreign_key: true
      t.references :ingredient, index: true, foreign_key: true
      t.decimal :amount
      t.string :unit

      t.timestamps null: false
    end
  end
end
