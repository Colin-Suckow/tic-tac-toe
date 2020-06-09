require_relative '../lib/board'

describe 'A Tic Tac Toe board' do

  it "exists" do
    Board.new
  end

  it "can be created with existing locations" do
    fake_locations = "Fake locations"
    board = Board.new(fake_locations)
    expect(board.locations).to eq(fake_locations)
  end

  it "is initially empty" do
    expect(Board.new).to be_empty
  end

end
