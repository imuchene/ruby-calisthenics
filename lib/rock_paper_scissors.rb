class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ;end


  def self.winner(player1, player2)
    # YOUR CODE HERE
    raise NoSuchStrategyError.new "Strategy must be one of R,P,S" if (player1.last =~ /[^RPS]/) || (player2.last =~ /[^RPS]/)
    
    p1 = player1.last
    p2 = player2.last

    
    if (player1.last == player2.last)
      return player1
    elsif
      (p1 == "R") && (p2 == "S")
      return player1
    elsif
      (p1 == "S") && (p2 == "P")
      return player1
    elsif
      (p1 == "P")&& (p2 == "R")
      return player1
    else
      return player2
    end
    
             
 end

  def self.tournament_winner(tournament)
    # YOUR CODE HERE
      if tournament.first.slice(0).is_a? String
       return winner(tournament.first, tournament.last) 
      else 
        a = tournament.first.slice(0).first
      
        b = tournament.first.slice(0).last
      
        c = tournament.first.slice(1).first
        d = tournament.first.slice(1).last
      
        e = tournament.last.slice(0).first
        f = tournament.last.slice(0).last
      
        g = tournament.last.slice(1).first
        h = tournament.last.slice(1).last
      
      return winner(winner(winner(a,b),winner(c,d)),winner(winner(e,f),winner(g,h)))
    end
  end

end

 tourney = [
    [
      [ ["Armando", "P"], ["Dave", "S"] ],      
      [ ["Richard", "R"], ["Michael", "S"] ]
    ],
    [
      [ ["Allen", "S"], ["Omer", "P"] ],
      [ ["David E.", "R"], ["Richard X.", "P"] ]
    ]
  ]
  


# p RockPaperScissors.winner(['Armando','R'], ['Dave','S'])
# p RockPaperScissors.tournament_winner(tourney)
#p  RockPaperScissors.tournament_winner([['Armando','R'], ['Dave','S']])
