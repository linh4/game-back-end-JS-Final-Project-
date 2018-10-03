class Game < ApplicationRecord
  belongs_to :player

  def self.high_scores
    # *WARNING: sorts wrong!!!
    if Game.all.size < 2
      Game.all.first
    else
      # byebug
      size = Game.all.length < 10 ? Game.all.length : 10
      Game.order(highest_level: :desc).select{|game| !game.highest_level.nil?}
    end
  end

  def is_high_score_game?
    Game.high_scores
  end
  # *FIX: has a weird affect upon how it sorts look into this
  # def self.best_players
  #   high_scores.map!{|score| score.player}.take(10)
  # end
end
