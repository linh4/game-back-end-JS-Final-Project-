class Game < ApplicationRecord
  belongs_to :player

  def self.high_scores
    # *WARNING: sorts wrong!!!
    highest_scores = Game.all.sort{|a, b|
    b.highest_level <=> a.highest_level}.take(10)
  end

  def is_high_score_game? 
    Game.high_score
  end
  # *FIX: has a weird affect upon how it sorts look into this
  # def self.best_players 
  #   high_scores.map!{|score| score.player}.take(10)
  # end
end
