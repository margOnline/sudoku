require 'sudoku'

describe Sudoku do
  let(:sudoku) {Sudoku.new}

  context 'starts with'  do
    it 'a 9 x 9 2-d array' do
     expect(sudoku.board).to be_a Array
    end

    it 'will not have cells greater indexed greater than 9' do
      expect{sudoku.board[9][10]}.to raise_error NoMethodError
    end

    it 'all cells empty' do
      expect(sudoku.board[3][4]).to eq ''
      expect(sudoku.board[5][8]).to eq ''
    end
  end

  it 'accepts only numbers 1-9 in cells' do
    row = [1,2,3,4,5,6,7,8,9]
    expect(sudoku.numbers_one_to_nine_in? row).to be_true
  end

it 'rejects numbers 1-9 in cells' do
    row = [1,2,3,14,5,6,7,8,10]
    expect(sudoku.numbers_one_to_nine_in? row).to be_false
  end
end