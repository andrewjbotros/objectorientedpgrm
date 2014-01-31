# A squad of robotic rovers are to be landed by NASA on a plateau on Mars. This plateau, which is curiously rectangular,
#must be navigated by the rovers so that their on-board cameras can get a complete view of the surrounding terrain to send back to Earth.

# A rover's position and location is represented by a combination of x and y co-ordinates and a letter representing one of the four
#cardinal compass points. The plateau is divided up into a grid to simplify navigation. An example position might be 0, 0, N, which means
#the rover is in the bottom left corner and facing North.

# In order to control a rover, NASA sends a simple string of letters. The possible letters are 'L', 'R' and 'M'. 'L' and 'R' makes the rover spin
#90 degrees left or right respectively, without moving from its current spot. 'M' means move forward one grid point, and maintain the same heading.

# Assume that the square directly North from (x, y) is (x, y+1).

# OUTPUT
# The output for each rover should be its final co-ordinates and heading.

# INPUT AND OUTPUT

# Test Input:
# 5 5
# 1 2 N
# LMLMLMLMM
# 3 3 E
# MMRMMRMRRM

# Expected Output:
# 1 3 N
# 5 1 E

#create required hashes
@coordinates = {}
rover1 = {}
rover2 = {}

#populate these hashes with the appropriate information
@coordinates["x"] = 5
@coordinates["y"] = 5

rover1["x"] = 1
rover1["y"] = 2
rover1["direction"] = ["N"]
rover1["path"] = ["LMLMLMLMM"]

rover2["x"] = 3
rover2["y"] = 3
rover2["direction"] = ["E"]
rover2["path"] = ["MMRMMRMRRM"]


def turn (direction)
	if direction == "L"
		puts "left"
	elsif direction == "R"
		puts "right"
	else
		return
	end
end









#let's visualize an initial map of where everything is
@grid_row = []
(0...@coordinates["x"]).each do |i|
        @grid_row.push("O")
end

@grid = []
(0...@coordinates["y"]).each do |j|
        @grid.push(@grid_row)
end

def print_grid
        (0...@coordinates["y"]).each do |value|
                print @grid[value]
                puts ""
        end
end

#set the rovers in their initial positions
@grid[rover1["x"] - 1][rover1["y"] - 1] = "R1"
@grid[rover2["x"] - 1][rover2["y"] - 1] = "R2"
print_grid




