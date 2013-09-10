class Sudoku

  attr_accessor :board
  ALLOWED_NUMS = [1,2,3,4,5,6,7,8,9]
  BOX_ID = [1,1,1,2,2,2,3,3,3,1,1,1,2,2,2,3,3,3,1,1,1,2,2,2,3,3,3,4,4,4,5,5,5,6,6,6,4,4,4,5,5,5,6,6,6,4,4,4,5,5,5,6,6,6,7,7,7,8,8,8,9,9,9,7,7,7,8,8,8,9,9,9,7,7,7,8,8,8,9,9,9]


  def initialize
    @board = Array.new(9){Array.new(9){|index| index =''}}
  end

  def play

  end

  def numbers_one_to_nine_in? row
    duplicates = row.select {|num| !ALLOWED_NUMS.include?num }
    duplicates.uniq.size == 0
  end

  def no_duplicates_in? row
    row.uniq.size == row.length
  end

  def rotate column
    column.transpose
  end

  def add_box_index_to cell
    BOX_ID[cell[0] * 9 + cell[1]]
  end

end