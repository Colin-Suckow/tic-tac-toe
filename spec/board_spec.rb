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
end
