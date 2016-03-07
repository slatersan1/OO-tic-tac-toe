require minitest/autorun

require "./t3game"
require "./t3player"
require "./t3board"

	
class PlayerTest < MiniTest::Test

	# def test_can_player_make_guess
	# 	dane = Player.new
	# 	dane. stub :gets, "5" do
	# 		choice = dane.take_turn
	# 	end
	# 	assert dane.pick_piece == "5"
	# 	end
	# end

	def test_get_piece
		dane = Player.new("X")
		dane.stub :gets, "X" do
			dane.move
		end
		assert dane.piece == "X"
	end
end	

# class BoardTest < MiniTest::Test

# 	def test_available_slot
# 		dane = Player.new
# 		dane.stub :gets
# 	end

# 	def test_place_slot

# 	end	