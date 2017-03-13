class RenameUserIdColumnToRecipes < ActiveRecord::Migration[5.0]
  def change
    rename_column :recipes, :user_id, :kitchen_id
  end
end
