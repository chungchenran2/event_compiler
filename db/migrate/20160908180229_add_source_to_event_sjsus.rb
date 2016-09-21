class AddSourceToEventSjsus < ActiveRecord::Migration
  def change
    add_column :event_sjsus, :source, :string
  end
end
