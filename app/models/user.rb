class User < ActiveRecord::Base
  # Use built-in rails support for password protection
  has_secure_password
  
  has_many :games
  
  validates_presence_of :username
  validates_uniqueness_of :username
  validates_presence_of :password_confirmation, on: :create 
  validates_confirmation_of :password, message: "does not match"
  validates_length_of :password, minimum: 4, message: "must be at least 4 characters long", allow_blank: true
  
end
