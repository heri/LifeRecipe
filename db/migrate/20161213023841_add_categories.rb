class AddCategories < ActiveRecord::Migration
  def change
    add_column :steps, :category_id, :integer
    add_column :steps, :provider_id, :integer
  end
end
