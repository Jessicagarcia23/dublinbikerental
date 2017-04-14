class User < ActiveRecord::Base
  #relationship between User and Bookings, an user can have many bookings
  has_many :orders
  #This part of code will vidate the information, email and password
  before_save { self.email = email.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
        format: { with: VALID_EMAIL_REGEX},
        uniqueness: true, case_sensitive: false
  has_secure_password
  validates :password, length: { minimum: 6 }
end