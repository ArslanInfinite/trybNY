class User < ActiveRecord::Base

  has_secure_password 

  has_many :reservations, dependent: :destroy
  has_many :activities, dependent: :destroy 
  has_many :activities, through: :reservations, dependent: :destroy
  has_many :reviews, through: :activities, dependent: :destroy
  has_many :likes, as: :likable, dependent: :destroy

  validates :username, presence: true, uniqueness: true,length: { minimum: 4, too_short: "%{count} characters is the minimum allowed", maximum: 20, too_long: "%{count} characters is the maximum allowed" }

  validates :password, presence: true, case_sensitive: false
  validates :password, confirmation: true, case_sensitive: false 
  validates :password_confirmation, presence: true, case_sensitive: false 

end