class String
  define_method(:beats?) do |contest|
    if self == contest
      return 'tie'
    elsif self == "rock" && contest == "scissors"
      return 'player 1'
    elsif self == "scissors" && contest == "paper"
      return 'player 1'
    elsif self == "paper" && contest == "rock"
      return 'player 1'
    else
      return 'player 2'
    end
  end
end
