class Activity < ActiveRecord::Base

  has_many :reservations
  has_many :users, through: :reservations
  has_many :reviews, through: :users 
  has_many :likes, as: :likable

  belongs_to :user

  validates :title, presence: true
  validates :description, presence: true 
  validates :location, presence: true 
  validates :capacity, length: { maximum: 100, too_long: "%{count} people is the maximum allowed" }
  validates :price, presence: true 
  validates :price, numericality: { only_integer: true }
  validates :datetime, presence: true 

end