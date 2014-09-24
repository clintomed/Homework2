class RockPaperScissors
		
	
  	# Exceptions this class can raise:
  	class NoSuchStrategyError < StandardError ; end

  	def self.winner(player1, player2)
		
		player1 = player1
		player2 = player2
    		no_strat_error = true
		moves = ["R", "P", "S"]
		if(!player1.kind_of?(Array) || !player2.kind_of?(Array))
			no_strat_error = false
			
		end
		if(!moves.include?(player1[1]) || !moves.include?(player2[1]))
			no_strat_error = false
			
		end
		raise NoSuchStrategyError, "Strategy must be one of R,P,S" unless no_strat_error
		if(player1[1] == "R" && player2[1] == "P")
			winner = player2
			puts "Player1 is Rock, Player 2 is Paper, Player 2 wins"
		elsif(player1[1] == "R" && player2[1] == "S")
			winner = player1
			puts "Player1 is Rock, Player 2 is Scissors, Player 1 wins"
		elsif(player1[1] == "P" && player2[1] == "R")
			winner = player1
			puts "Player1 is Paper, Player 2 is Rock, Player 1 wins"
		elsif(player1[1] == "P" && player2[1] == "S")
			winner = player2
			puts "Player1 is Paper, Player 2 is Scissors, Player 2 wins"
		elsif(player1[1] == "S" && player2[1] == "P")
			winner = player1
			puts "Player1 is Scissors, Player 2 is Paper, Player 1 wins"
		elsif(player1[1] == "S" && player2[1] == "R")
			winner = player2
			puts "Player1 is Scissors, Player 2 is Rock, Player 2 wins"
		elsif(player1[1] == player2[1])
			winner = player1
			puts "Player1 and Player 2 played the same, Player 1 wins"
		end
		puts "#{winner}"
		return winner
  	end

  	def self.tournament_winner(tournament)
		puts "Tourn: #{tournament}"
		puts "Tourn 1: #{tournament[0]}"
		puts "Tourn 2: #{tournament[1]}"
		if(tournament[0][0].is_a? String)
			return winner(tournament[0], tournament[1])
		end
    		return winner([tournament_winner(tournament[0]), tournament_winner(tournament[1])])
  	end

end
