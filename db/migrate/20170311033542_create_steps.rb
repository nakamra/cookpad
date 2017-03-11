class CreateSteps < ActiveRecord::Migration[5.0]
  def change
    create_table :steps do |t|
      t.string  :body, limit: 60
      t.string  :image
      t.integer :step_position_number, null:false
      t.references :recipe, foreign_key: true
      t.timestamps
    end
  end
end
