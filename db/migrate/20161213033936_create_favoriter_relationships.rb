class CreateFavoriterRelationships < ActiveRecord::Migration
  def change
    create_table :favoriter_relationships do |t|
      t.integer :user_id
      t.integer :step_id

      t.timestamps null: false
    end
  end
end
