class Activity < ActiveRecord::Base

  has_many :reservations
  has_many :users, through: :reservations
  has_many :reviews
  has_many :likes, as: :likable

  has_one_attached :image

  belongs_to :user #, optional: true

  validates :title, presence: true
  validates :description, presence: true 
  validates :location, presence: true 
  validates :capacity, length: { maximum: 100, too_long: "%{count} people is the maximum allowed" }
  validates :price, presence: true 
  validates :price, numericality: { only_integer: true }
  validates :start_at, presence: true 

  def self.highest_rated
    Review.joins(:activity).order(rating: :desc)  
  end

  def review(user_id) 
    reviews.where(user_id: user_id, activity_id: id)
  end

end