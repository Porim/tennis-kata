# player1 = gets.chomp
# player2 = gets.chomp 

# score = [player1_score, player2_score]

def tennis_score(score)
  # ZERO = "Love"
  # FIFTEEN = "Fifteen"
  # # THIRTY = "Thirty"
  # # FORTY = "Forty"
  # player1 = ""
  # player2 = ""
  # case
  # when score[0] = 0
  #   player1 = ZERO
  # when score[0] = 1
  #   player1 = FIFTEEN
  # end

  # "#{player1}-#{player2}"


  case
  when score == [0, 0]
    return "Love-All"
  when score == [1, 0]
    return "Fifteen-Love"
  when score == [0, 1]
    return "Love-Fifteen"
  when score == [1, 1]
    return "Fifteen-All"
  when score == [2, 0]
    return "Thirty-Love"
  when score == [0, 2]
    return "Love-Thirty"
  when score == [2, 1]
    return "Thirty-Fifteen" 
  when score == [1, 2]
    return "Fifteen-Thirty"
  when score == [2, 2]
    return "Thirty-All"
  when score == [3, 0]
    return "Forty-Love"
  when score == [0, 3]
    return "Love-Forty"
  when score == [3, 1]
    return "Forty-Fifteen"
  when score == [1, 3]
    return "Fifteen-Forty"
  when score == [3, 2]
    return "Forty-Thirty"
  when score == [2, 3]
    return "Thirty-Forty"
  when score == [4, 3]
    return "Advantage player1"
  when score == [3, 4]
    return "Advantage player2"
  end

  player1_score = score[0]
  player2_score = score[1]
  case
  when player1_score >= 4 && (player1_score - player2_score) >= 2
    return "Win for player1"
  when player2_score >= 4 && (player2_score - player1_score) >= 2
    return "Win for player2"
  when player1_score == player2_score && player1_score >= 3
    return "Deuce"
  end

end

# testing github, test 2, test 3