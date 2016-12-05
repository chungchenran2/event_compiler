class AddUserToEventSjsus < ActiveRecord::Migration
  def change
    add_reference :event_sjsus, :user, index: true, foreign_key: true
  end
end
