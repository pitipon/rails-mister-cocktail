class CreateIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredients do |t|
      t.text :name
      t.integer :cost
      t.text :description
      t.integer :quantity
      t.text :quantity_measurement

      t.timestamps
    end
  end
end
