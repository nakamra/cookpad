class RemoveUserFromRecipe < ActiveRecord::Migration[5.0]
  def change
    remove_reference :recipes, :user, foreign_key: true, index:true
  end
end
