class RenameKitchenIdColumnToRecipes < ActiveRecord::Migration[5.0]
  def change
    rename_column :recipes, :kitchen_id, :user_id
  end
end
