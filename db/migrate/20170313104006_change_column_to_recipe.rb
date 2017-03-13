class ChangeColumnToRecipe < ActiveRecord::Migration[5.0]
  def change
  end
  add_foreign_key :recipes, :kitchens, column: :kitchen_id
end
