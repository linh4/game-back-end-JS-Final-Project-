class Game < ApplicationRecord
  belongs_to :player

  def self.high_scores
    highest_scores = Game.all.sort{|a, b|
    b.highest_level <=> a.highest_level}.take(10)
  end

  def is_high_score_game? 
    Game.high_score
  end

  def self.best_players 
    high_scores.map!{|score| score.player}
  end
end
