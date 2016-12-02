class Game < ActiveRecord::Base
  
  has_one :user
  has_one :song
  has_many :gamewords
  
  validates_presence_of :user_id, :song_id
  
  #Add is_active_in_system
  
end
