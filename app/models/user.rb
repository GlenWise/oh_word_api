class User < ActiveRecord::Base
  # Use built-in rails support for password protection
  has_secure_password
    
  has_many :games
  
  validates_presence_of :username
  validates_uniqueness_of :username
  validates_presence_of :password, on: :create 
  validates_presence_of :password_confirmation, on: :create 
  validates_confirmation_of :password, message: "does not match"
  validates_length_of :password, :in => 6..20, :on => :create
  
  
  before_create :generate_auth_token
  
  def generate_auth_token
    self.auth_token = SecureRandom.hex
  end
  
    # login by username
  def self.authenticate(username, password)
    find_by(username).try(:authenticate, password)
  end

end
