class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string :title
      t.string :step_type
      t.string :quantity
      t.text :description
      t.integer :parent_id
      t.time :duration
      t.integer :speed
      t.string :effort
      t.text :notes

      t.timestamps null: false
    end
  end
end
