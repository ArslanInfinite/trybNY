class Like < ActiveRecord::Base

  belongs_to :user, polymorphic: true
  belongs_to :activity, polymorphic: true

end