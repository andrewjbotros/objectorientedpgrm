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
$coordinates = {}
$rover1 = {}
$rover2 = {}

#populate these hashes with the appropriate information
$coordinates["x"] = 5
$coordinates["y"] = 5

$rover1["x"] = 1
$rover1["y"] = 2
$rover1["direction"] = ["N"]
$rover1["instructions"] = ["LMLMLMLMM"]

$rover2["x"] = 3
$rover2["y"] = 3
$rover2["direction"] = ["E"]
$rover2["instructions"] = ["MMRMMRMRRM"]

class Rover
	attr_accessor :x, :y, :direction, :instructions

	def initialize (x, y, direction, instructions)
		@x = x
		@y = y
		@direction = direction
		@instructions = instructions
		@compass = ["N", "E", "S", "W"]
	end

	def turn (path, direction)
		if path = "L"
			if direction == "N"
				direction = "W"
			elsif direction == "E"
				direction = "N"
			elsif direction == "S"
				direction = "E"
			elsif direction == "W"
				direction = "S"
			end

		elsif path = "R"
			if direction == "N"
				direction = "E"
			elsif direction == "E"
				direction = "S"
			elsif direction == "S"
				direction = "W"
			elsif direction == "W"
				direction = "N"
			end
		end
		@direction = direction
	end

	def move (direction)
		if direction = "N"
			y += 1
		elsif direction = "E"
			x += 1
		elsif direction = "S"
			y -= 1
		elsif direction = "W"
			x -= 1
		end
	end
end

Rover1 = Rover.new($rover1["x"], $rover2["y"], $rover1["direction"], $rover1["instructions"])

