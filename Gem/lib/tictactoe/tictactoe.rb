require_relative 'board'
require_relative 'player'
class TicTacToe
        attr_accessor :board
        attr_accessor :player
        def initialize
                @board = Board.new
                @player = Player.new
        end
        def play
                turn = true
                helper = 0
                count = 0
                game_on = true
                2.times{|a|
                        count += 1
                        puts "Type the name, player no.#{count}"
                        name_ = gets.chomp.capitalize
                        @player.set_name(turn, name_)
                        turn = !turn
                }
                @board.display_board
                count = 0
                while game_on && count < 9
                        count += 1
                        helper = turn ? 1 : 2
                        puts
                        puts "------------------"
                        puts "Player #{helper}: you are up!"
                        puts "------------------"
                        move = gets.to_i
                        if @board.validate?(move)
                                @board.update_board(turn, move)
                        else
                                while @board.validate?(move) == false
                                        puts "The command you are trying to use is invalid or the cell that you want to use is occupied already"
                                        move = gets.to_i
                                end
                                @board.update_board(turn, move)
                        end
                        if @board.conditions_for_winning == false
                                puts "The winner is player #{helper}!"
                                puts "¡Congratulations #{@player.get_name (turn)}!"
                                game_on = false
                        end
                        puts "It was a tie" if game_on && count ==  9
                        turn = !turn
                        @board.display_board
                end
                puts "End of Game"
        end
end
