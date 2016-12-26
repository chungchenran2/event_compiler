class AddAvatarColumnsToEventSjsus < ActiveRecord::Migration
  #def change
    #add_column :event_sjsus, :avatar_column, :string
  #end
  def up
    add_attachment :event_sjsus, :avatar
  end

  def down
    remove_attachment :event_sjsus, :avatar
  end
end
