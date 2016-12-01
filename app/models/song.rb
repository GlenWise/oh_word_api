class Song < ActiveRecord::Base
  has_many :words
  
  validates_presence_of :title, :lyrics 
  
  
end
