class Review < ActiveRecord::Base

  has_many :likes
  belongs_to :user
  belongs_to :activity 

  

end