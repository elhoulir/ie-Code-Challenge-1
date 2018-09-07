rows = 5
columns = 5 
grid = []


for i in 0...rows do
    grid[i] = []
    for c in 0...columns do 
        grid[i][c] = "#{i.to_s},#{c.to_s}"
    end
end

x = 0
y = 0

# puts "current position #{grid[x][y].reverse}"

# position of grid
# if gets.chomp == 'MOVE'
#     y += 1
#     puts "moved up on grid #{grid[x][y].reverse}" 
# end

# if gets.chomp == 'DOWN'
#     y -= 1
#     puts "Moved down on the grid #{grid[x][y].reverse}"
# end 

# if gets.chomp == 'RIGHT'
#     x += 1
#     puts "moved to the right on grid #{grid[x][y].reverse}" 
# end

# if gets.chomp == 'LEFT'
#     x -= 1
#     puts "moved to the left on grid #{grid[x][y].reverse}" 
# end

# if gets.chomp == 'PLACE'
    # puts "You are now back to starting position #{grid[x][y]}"
# end
loop do
puts "Command:"
command = gets.chomp
case command
    when "MOVE", "Move", "move"
        y += 1
        puts "moved up on grid #{grid[x][y].reverse} NORTH" 
 
    when "DOWN", "Down", "down"
        y -= 1
        puts "Moved to #{grid[x][y].reverse} SOUTH"    
 
    when "RIGHT", "Right", "right"
        x += 1
        puts "Moved to #{grid[x][y].reverse} EAST" 
 
    when "LEFT", "Left", "left"
        x -= 1
        puts "moved to the left on grid #{grid[x][y].reverse} WEST" 
 
    when "REPORT", "Report", "report"
        puts "Current position #{grid[x][y].reverse}"        
    
    # when "PLACE", "Place", "place"
    #     puts "You are now back to starting position #{grid[x][y]}"

    when "EXIT", "Exit", "exit"
    break
    
    else
        puts "PLEASE ENTER A VALID COMMAND"
    
    end
end
puts "Goodbye!"

# Each array is a row, each element in each array is a column.
# I added a string of each position inside each element so you can see how it works

# grid
[
    ["0,0", "0,1", "0,2", "0,3", "0,4"], 
    ["1,0", "1,1", "1,2", "1,3", "1,4"], 
    ["2,0", "2,1", "2,2", "2,3", "2,4"], 
    ["3,0", "3,1", "3,2", "3,3", "3,4"], 
    ["4,0", "4,1", "4,2", "4,3", "4,4"]
]

# grid.reverse
[
    ["4,0", "4,1", "4,2", "4,3", "4,4"], 
    ["3,0", "3,1", "3,2", "3,3", "3,4"], 
    ["2,0", "2,1", "2,2", "2,3", "2,4"], 
    ["1,0", "1,1", "1,2", "1,3", "1,4"], 
    ["0,0", "0,1", "0,2", "0,3", "0,4"]
]