class ComputerPlayer

	def initialize
		@piece = piece
		@choice = choice
	end
	
	def pick_piece
		puts "Player you will be 'O'."
  		@piece = "O"
	end	

	def take_turn
  		puts "Computer, please choose a space to move to. (1-9)"
  		@choice = gets.chomp.to_i
  		until available_slots(board).include?(choice)
    		puts "You have to choose an available board position. Please pick again."
    		@choice = gets.chomp.to_i
  		end
  		@choice # = value within array
	end
end