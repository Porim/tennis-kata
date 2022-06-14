require './tennis'

describe '' do
  it 'starting score [0, 0]' do
    expect(tennis_score([0, 0])).to eq("Love-All")
  end

  it 'starting score [1, 0]' do
    expect(tennis_score([1, 0])).to eq("Fifteen-Love")
  end

  it 'starting score [0, 1]' do
    expect(tennis_score([0, 1])).to eq("Love-Fifteen")
  end

  it 'starting score [1, 1]' do
    expect(tennis_score([1, 1])).to eq("Fifteen-All")
  end

  it 'starting score [2, 1]' do
    expect(tennis_score([2, 1])).to eq("Thirty-Fifteen")
  end

  it 'starting score [1, 2]' do
    expect(tennis_score([1, 2])).to eq("Fifteen-Thirty")
  end

  it 'starting score [2, 2]' do
    expect(tennis_score([2, 2])).to eq("Thirty-All")
  end

  it 'starting score [3, 2]' do
    expect(tennis_score([3, 2])).to eq("Forty-Thirty")
  end

  it 'starting score [2, 3]' do
    expect(tennis_score([2, 3])).to eq("Thirty-Forty")
  end

  it 'starting score [3, 3]' do
    expect(tennis_score([3, 3])).to eq("Deuce")
  end

  it 'starting score [2, 0]' do
    expect(tennis_score([2, 0])).to eq("Thirty-Love")
  end

  it 'starting score [0, 2]' do
    expect(tennis_score([0, 2])).to eq("Love-Thirty")
  end

  it 'starting score [3, 0]' do
    expect(tennis_score([3, 0])).to eq("Forty-Love")
  end

  it 'starting score [0, 3]' do
    expect(tennis_score([0, 3])).to eq("Love-Forty")
  end

  it 'starting score [3, 1]' do
    expect(tennis_score([3, 1])).to eq("Forty-Fifteen")
  end

  it 'starting score [1, 3]' do
    expect(tennis_score([1, 3])).to eq("Fifteen-Forty")
  end

  it 'test when both player scored 40 to be "Deuce"' do
    expect(tennis_score([4, 4])).to eq("Deuce")
  end

  # it 'test for no deuce when below[3, 3]' do
  #   expect(tennis_score([2, 2])).to not_eq("Deuce")
  # end

  it 'player 1 has won the game' do
    expect(tennis_score([4, 0])).to eq("Win for player1")
  end

  it 'player 2 has won the game' do
    expect(tennis_score([0, 4])).to eq("Win for player2")
  end
end
