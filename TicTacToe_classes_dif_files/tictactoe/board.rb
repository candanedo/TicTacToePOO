class Board
	attr_accessor :grid
	def initialize
		@grid = [["1", "2", "3"],["4", "5", "6"],["7", "8", "9"]]
	end
	def update_board player, action
		command = player ? "X" : "O"
		case action
			when 1
				@grid[0][0] = command
			when 2
				@grid[0][1] = command
			when 3
				@grid[0][2] = command
			when 4
				@grid[1][0] = command
			when 5
				@grid[1][1] = command
			when 6
				@grid[1][2] = command
			when 7
				@grid[2][0] = command
			when 8
				@grid[2][1] = command
			when 9
				@grid[2][2] = command
			else
				
		end
		return @grid
	end
	def display_board 
		@grid.each{ |g|
			print g
			puts
		}
	end
	def conditions_for_winning
		return false if @grid[0][0] == @grid[1][1] && @grid[1][1] == @grid[2][2]
		return false if @grid[0][2] == @grid[1][1] && @grid[1][1] == @grid[2][0]
		return false if @grid[0][2] == @grid[1][1] && @grid[1][1] == @grid[2][0]
		return false if @grid[0][0] == @grid[0][1] && @grid[0][1] == @grid[0][2]
		return false if @grid[1][0] == @grid[1][1] && @grid[1][1] == @grid[1][2]
		return false if @grid[2][0] == @grid[2][1] && @grid[2][1] == @grid[2][2]
		return false if @grid[0][0] == @grid[1][0] && @grid[1][0] == @grid[2][0]
		return false if @grid[0][1] == @grid[1][1] && @grid[1][1] == @grid[2][1]
		return false if @grid[0][2] == @grid[1][2] && @grid[1][2] == @grid[2][2]
	end
	def validate? field
		case field
			when 1
				return @grid[0][0] == "X" || @grid[0][0] == "O" ? false : true
			when 2
				return @grid[0][1] == "X" || @grid[0][1] == "O" ? false : true
			when 3
				return @grid[0][2] == "X" || @grid[0][2] == "O" ? false : true
			when 4
				return @grid[1][0] == "X" || @grid[1][0] == "O" ? false : true
			when 5
				return @grid[1][1] == "X" || @grid[1][1] == "O" ? false : true
			when 6
				return @grid[1][2] == "X" || @grid[1][2] == "O" ? false : true
			when 7
				return @grid[2][0] == "X" || @grid[2][0] == "O" ? false : true
			when 8
				return @grid[2][1] == "X" || @grid[2][1] == "O" ? false : true
			when 9
				return @grid[2][2] == "X" || @grid[2][2] == "O" ? false : true
			else
				return false
		end
	end
end