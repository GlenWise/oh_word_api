class GameWord < ActiveRecord::Base
  belongs_to :game
  validates_presence_of :game_id, :word_id
  
  scope :for_game,   ->(game_id) { where(game_id: game_id) }
end
