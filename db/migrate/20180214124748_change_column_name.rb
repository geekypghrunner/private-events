class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    change_table :event_attendings do |t|
      t.rename :user_id, :attendee_id
      t.rename :event_id, :attended_event_id
    end
  end
end