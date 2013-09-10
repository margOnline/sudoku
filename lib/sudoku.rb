class Sudoku

  attr_accessor :board
  ALLOWED_NUMS = [1,2,3,4,5,6,7,8,9]
  
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



end