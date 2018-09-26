require_relative './tictactoe/tictactoe'
class Game
	def start
		@ttt = TicTacToe.new
		@ttt.play
	end
end
