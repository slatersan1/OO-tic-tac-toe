require "./T3board"
require "./T3game"

class Player
  attr_accessor :name, :piece, :choice

  WINS = [[0, 1, 2], 
          [3, 4, 5], 
          [6, 7, 8], 
          [0, 3, 6], 
          [1, 4, 7], 
          [2, 5, 8],
          [0, 4, 8], 
          [2, 4, 6]]

  def initialize(name, piece, board)
    @name = name
    @piece = piece
    @board = board
  	@choice = nil
  end

  def move(cell)
    @board.update_cell(cell, self.piece)
  end

  def win?
    WINS.each do |win|
      values = [cells[win[0]], cells[win[1]], cells[win[2]]]
      return true if values.include?(self.piece.to_s) && 
      ((values[0] == values[1]) && (values[1] == values[2]))
    end
    false
  end

  def cells
    @board.cells
  end

end
