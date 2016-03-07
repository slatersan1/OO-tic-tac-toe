require "./T3board"
require "./T3player"

class Game

  def initialize 
    @board = Board.new
    @current_player = ""
    @win = false
    @turn = 0
  end

  def start_game
    names = get_names
    @player1 = Player.new(names[0], :X, @board)
    @player2 = Player.new(names[1], :O, @board)
    @current_player = @player1
    @board.show_board
    take_turn until @win || @turn == 9
    if @win
      puts "#{@win.name} wins!"
    else
      puts "DRAW!"
    end
  end

  def take_turn
    puts "#{@current_player.name}\'s turn. Choose your cell (1-9): "
    @choice = gets.chomp.to_i
    if @current_player.move(@choice) != false
      @win = @current_player if @current_player.win?
      @turn += 1
      system "clear"
      switch_player
      @board.show_board
    end
  end

  def switch_player
    @current_player = @current_player == @player1 ? @player2 : @player1
  end

  def get_names
    puts "Player X name: "
    name1 = gets.chomp
    puts "Player O name: "
    name2 = gets.chomp
    [name1, name2]
  end

end