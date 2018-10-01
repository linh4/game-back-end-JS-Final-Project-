class Player < ApplicationRecord
  has_many :games

  def top_score
    self.games.sort{|a, b|
      b.highest_level <=> a.highest_level
    }[0]
  end

end
