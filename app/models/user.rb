class User < ActiveRecord::Base

  has_secure_password 

  has_many :reservations
  has_many :activities 
  has_many :activities, through: :reservations
  has_many :reviews, through: :activities 
  has_many :likes, as: :likable

  validates :username, presence: true 
  validates :username, uniqueness: true
  validates :username, length: { minimum: 4, too_short: "%{count} characters is the minimum allowed" }
  validates :username, length: { maximum: 20, too_long: "%{count} characters is the maximum allowed" }

  validates :password, presence: true #{ case_sensitive: false }
  validates :password, confirmation: true #{ case_sensitive: false }
  validates :password_confirmation, presence: true #{ case_sensitive: false }

end