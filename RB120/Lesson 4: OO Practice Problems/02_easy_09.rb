class Game
  def play
    "Start the game!"
  end
end

class Bingo < Game
  def rules_of_play
    #rules of play
  end
end

# If we add a play method to the Bingo class, it will overide the Game#play method.