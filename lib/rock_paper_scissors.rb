class RockPaperScissors

	# Exceptions this class can raise:
	class NoSuchStrategyError < StandardError ; end

	def self.winner(player1, player2)
		#can you tell I usually do stuff in java
		if player1[1] !~ /[RPS]/ || player2[1] !~ /[RPS]/ 
			raise NoSuchStrategyError, "Strategy must be one of R,P,S"
		end

		if player1[1] == player2[1]
			return player1
		end

		if player1[1] == "R"
			if player2[1] == "P"
				return player2
			end
			if player2[1] == "S"
				return player1
			end
		end
		if player1[1] == "P"  
			if player2[1] == "S"  
				return player2
			end
			if player2[1] == "R"    
				return player1
			end
		end
		if player1[1] == "S"  
			if player2[1] == "R"  
				return player2
			end
			if player2[1] == "P"    
				return player1
			end
		end	    
	end

	def self.tournament_winner(tournament)
		#if we're at an end point, fight it out
		if tournament[0][0].is_a? String
			return winner(tournament[0], tournament[1])
		end
		# Otherwise keep going down the rabbit hole
		return tournament_winner([tournament_winner(tournament[0]),tournament_winner(tournament[1])])
	end
end

