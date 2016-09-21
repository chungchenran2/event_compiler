class CreateEventSjsus < ActiveRecord::Migration
  def change
    create_table :event_sjsus do |t|
      t.string :title
      t.text :body

      t.timestamps null: false
    end
  end
end
