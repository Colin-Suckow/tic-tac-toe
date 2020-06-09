require_relative "../lib/board"

describe "A Tic Tac Toe board" do
  let(:full_board) {
    {
      top: { left: :fake, middle: :fake, right: :fake },
      middle: { left: :fake, middle: :fake, right: :fake },
      bottom: { left: :fake, middle: :fake, right: :fake },
    }
  }

  let(:midgame_board) {
    {
      top: { left: :o, middle: nil, right: nil },
      middle: { left: nil, middle: :x, right: nil },
      bottom: { left: nil, middle: nil, right: nil },
    }
  }

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

  it "is full when all locations are filled" do
    board = Board.new(full_board)
    expect(board).to be_full
  end

  it "can place a token at a location" do
    board = Board.new
    board.place(:x, :top, :left)
    expect(board.locations[:top][:left]).to eq(:x)
  end

  it "can retrieve the token at a location" do
    board = Board.new
    board.locations[:top][:left] = :x
    expect(board.token_at(:top, :left)).to eq(:x)
  end

  it "can be reset" do
    board = Board.new(full_board)
    board.reset
    expect(board.locations).to eq(Board.new.locations)
  end
end
