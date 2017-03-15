class RemoveIndexToRecipe < ActiveRecord::Migration[5.0]
  def change
    remove_index :recipes, :name
  end
end
