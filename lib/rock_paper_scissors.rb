class String
  define_method(:beats?) do |contest|
    if self == "rock" && contest == "scissors"
      return true
    elsif self == "scissors" && contest == "paper"
      return true
    elsif self == "paper" && contest == "rock"
      return true
    end
    if self == "rock" && contest == "paper"
      return false
    elsif self == "scissors" && contest == "rock"
      return false
    elsif self == "paper" && contest == "scissors"
      return false
    end
    if self == "rock" && contest == "rock"
      return 'tie'
    elsif self == "scissors" && contest == "scissors"
      return 'tie'
    elsif self == "paper" && contest == "paper"
      return 'tie'
    end
  end
end
