class ChangeCommentsEventIdColumn < ActiveRecord::Migration[6.0]
  def change
    change_column_null :comments, :event_id, true
  end
end
