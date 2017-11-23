class CreateCocktails < ActiveRecord::Migration[5.1]
  def change
    create_table :cocktails do |t|
      t.text :name
      t.integer :price
      t.text :description
      t.boolean :alcohol

      t.timestamps
    end
  end
end
