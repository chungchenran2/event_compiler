class Comment < ActiveRecord::Base
  belongs_to :event_sjsu
  belongs_to :user
end
