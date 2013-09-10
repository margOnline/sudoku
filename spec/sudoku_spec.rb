require 'sudoku'

describe Sudoku do
  let(:sudoku) {Sudoku.new}

  context 'starts with'  do
    it 'a 9 x 9 2-d array' do
     expect(sudoku.board).to be_a Array
    end

    it 'cells indexed less than 10' do
      expect{sudoku.board[9][10]}.to raise_error NoMethodError
    end

    it 'all cells empty' do
      expect(sudoku.board[3][4]).to eq ''
      expect(sudoku.board[5][8]).to eq ''
    end
  end

  context 'accepts only' do
    it 'numbers 1-9 in cells' do
      row = [1,2,3,4,5,6,7,8,9]
      expect(sudoku.numbers_one_to_nine_in? row).to be_true
    end

    it 'unique numbers in rows' do 
      row = [1,2,3,4,5,6,7,8,9]
      expect(sudoku.no_duplicates_in? row).to be_true
    end 
  end

  context 'rejects' do  
    it 'numbers in cells not in range 1-9' do
      row = [1,2,3,14,5,6,7,8,10]
      expect(sudoku.numbers_one_to_nine_in? row).to be_false
    end

    it 'non-unique numbers in rows' do 
      row = [1,2,2,4,5,6,7,8,5]
      expect(sudoku.no_duplicates_in? row).to be_false
    end 
  end

  it 'transposes columns into rows' do 
    column = [[1,2],[3,4]]
    expect(sudoku.rotate column).to eq [[1,3],[2,4]]
  end 

  it 'associates a box index with cell' do
    cell = [2,4]
    cell1 = [8,7]
    expect(sudoku.add_box_index_to cell).to eq 2
    expect(sudoku.add_box_index_to cell1).to eq 9
  end




end