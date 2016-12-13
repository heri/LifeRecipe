class ChangeColumnProvider < ActiveRecord::Migration
  def change
    rename_column :steps, :provider_id, :user_id
  end
end
