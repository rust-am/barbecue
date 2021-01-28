class ChangePhotosUserIdColumn < ActiveRecord::Migration[6.0]
  def change
    change_column_null :photos, :user_id, true
  end
end
