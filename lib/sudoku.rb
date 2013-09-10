class Sudoku

  attr_accessor :board, :cells
  
  ALLOWED_NUMS = [1,2,3,4,5,6,7,8,9]
  BOX_ID = [1,1,1,2,2,2,3,3,3,1,1,1,2,2,2,3,3,3,1,1,1,2,2,2,3,3,3,4,4,4,5,5,5,6,6,6,4,4,4,5,5,5,6,6,6,4,4,4,5,5,5,6,6,6,7,7,7,8,8,8,9,9,9,7,7,7,8,8,8,9,9,9,7,7,7,8,8,8,9,9,9]


  def initialize
    @board = Array.new(9){Array.new(9){|index| index =''}}
    @cells = Array.new(9){Array.new(9)}
 #   @cells = create_cells
  end

  def validate_board
    raise 'Row Error' if @board.each {|row| no_duplicates_in row }
    raise 'Column Error' if @board.transpose.each {|column| no_duplicates_in column}
    raise 'Box Error'
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

  def get_box_index_of row, column
    BOX_ID[row * 9  + column]
  end

  def create_cells
    x = 0.upto 8
    x.each do |row| 
      x.each do |column| 
        @cells[row][column] = get_box_index_of row, column
      end
    end

    @cells

  end



end