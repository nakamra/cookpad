class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name, null: false
      t.string :picture
      t.text :copy
      t.timestamps
    end
  end
end
