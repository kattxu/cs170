class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end
    
def rps_game_winner(game)
    raise WrongNumberOfPlayersError unless game.length == 2
    player1move = game[0][1].upcase
    player2move = game[1][1].upcase
    strategy = ["R", "P", "S"]
    if (!strategy.include?(player1move) | !strategy.include?(player2move))
        raise NoSuchStrategyError, "You can only have a rock, paper, or scissors!"
    else
        if(["PR", "RS", "SP"].include?(player1move + player2move)) #winning combos: paper > rock; rock > scissors; scissors > paper
            game[0]
        elsif(player1move == player2move) #tie, first one wins
                game [0]
            else
            game[1]
        end
    end
end


def rps_tournament_winner(tournament)
    def powerOfTwo(digit)
        digit.to_i(2) != nil
    end
    if(true) #if initial array is well-formed (2^n divisible)
        rps_game_winner(tournament)
    else
        rps_tournament_winner(rps_tournament_winner(tournament[0], rps_tournament_winner(tournament[1])))
    end
        
end

p rps_game_winner([["Armando", "P"], ["Dave", "S"]]) #P > S
p rps_game_winner([["Lovell", "r"], ["Night", "S"]]) #r > S
p rps_game_winner([["Tina", "S"], ["Ashe", "p"]]) #S > p
p rps_game_winner([["Timmy", "s"], ["Tommy", "S"]]) #Timmy is first bc tie
p rps_game_winner([["Bobby", "W"], ["Robby", "R"]]) #error bc W is not a strategy

p rps_tournament_winner([["Timmy", "s"], ["Tommy", "S"], ["Bobby", "W"], ["Robby", "R"]])
p rps_tournament_winner([["Lovell", "r"], ["Night", "S"], ["Timmy", "s"], ["Tommy", "S"], ["Bobby", "W"], ["Robby", "R"]])
p rps_tournament_winner([["Armando", "P"], ["Dave", "S"], ["Lovell", "r"], ["Night", "S"], ["Timmy", "s"], ["Tommy", "S"], ["Bobby", "W"], ["Robby", "R"]])