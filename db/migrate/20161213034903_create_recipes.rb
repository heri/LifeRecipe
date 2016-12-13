class CreateRecipes < ActiveRecord::Migration
  def change
    remove_column :steps, :user_id
    remove_column :steps, :category_id
    
    create_table :recipes do |t|

      t.string :title
      t.text :description
      t.integer :user_id
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
