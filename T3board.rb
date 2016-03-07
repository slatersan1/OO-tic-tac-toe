require "./T3player"

class Board
  attr_accessor :cells

  def initialize
    @cells = [
    "1", "2", "3",
    "4", "5", "6",
    "7", "8", "9"
    ]
  end

  def update_cell(number, piece)
    if cell_free?(number)
      self.cells[number - 1] = piece.to_s
      show_board 
    else
      puts "Cell is not empty! Choose another cell."
      return false
    end
  end

  def show_board
    puts "
      ---------
      | #{@cells[0]} | #{@cells[1]} | #{@cells[2]} |
      | #{@cells[3]} | #{@cells[4]} | #{@cells[5]} |
      | #{@cells[6]} | #{@cells[7]} | #{@cells[8]} |
      ---------
      "
  end

  def cell_free?(number)
    cell = self.cells[number - 1]
    if cell == "X" ||  cell == "O"
      false
    else
      true
    end
  end

end