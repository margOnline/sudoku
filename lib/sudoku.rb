class Sudoku

  attr_accessor :board
  ALLOWED_NUMS = [1,2,3,4,5,6,7,8,9]
  def initialize
    @board = [
               ['','','','','','','','',''],
               ['','','','','','','','',''],
               ['','','','','','','','',''],
               ['','','','','','','','',''],
               ['','','','','','','','',''],
               ['','','','','','','','',''],
               ['','','','','','','','',''],
               ['','','','','','','','',''],
               ['','','','','','','','','']
              ]
  end

  def numbers_one_to_nine_in? row
    duplicates = row.map {|num| !ALLOWED_NUMS.include?num }
    duplicates.uniq.size == 0
  end

  def no_duplicates_in? row
    row.uniq.size == 1
  end


end