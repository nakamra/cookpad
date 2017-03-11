class CreateIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :quantity
      t.references :recipe
      t.timestamps
    end
    add_index :ingredients, :name
    add_index :ingredients, :quantity
  end
end
