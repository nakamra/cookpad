class ChangeIndexToRecipe < ActiveRecord::Migration[5.0]
  def change
    add_index :recipes,  [:user_id, :name], unique: true
  end
end
