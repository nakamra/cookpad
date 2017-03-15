class RenameKitchensToUsers < ActiveRecord::Migration[5.0]
  def change
    rename_table :kitchens, :users
  end
end
