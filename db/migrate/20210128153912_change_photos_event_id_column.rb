class ChangePhotosEventIdColumn < ActiveRecord::Migration[6.0]
  def change
    change_column_null :photos, :event_id, true
  end
end
