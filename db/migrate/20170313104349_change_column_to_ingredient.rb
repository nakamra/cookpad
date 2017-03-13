class ChangeColumnToIngredient < ActiveRecord::Migration[5.0]
  def change
  end
  add_foreign_key :ingredients, :recipes, column: :recipe_id
end
