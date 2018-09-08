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

puts "-"*60
puts "HELLO! WELCOME TO RASHID'S HACKY PACMAN SIMULATOR"
puts "-"*60
puts "Here is the grid:"
puts "-"*60
grid.reverse.each { |x|
 puts x.join(" ")
}
puts "-"*60
puts "Now let's play some pacman!"
puts "-"*60
puts "Available commands:
1. Place: This will put pacman back to the starting position of the grid    
2. Move: Pacman will move up on the grid
3. Down: Pacman will move down on the grid
4. Left: Pacman will move left on the grid
5. Right: Pacman will move right on the grid
6. Report: This will give you pacman's current location on the grid
7. Exit: This will end the game"

puts "-"*60
puts "NOTS: This pacman is cheeky and likes to run outside the grid:"
puts "-"*60

puts "Please enter command:"
puts "-"*60
loop do

command = gets.chomp
case command
    when "PLACE", "Place", "place"
        puts "You have moved to starting position #{grid[x][y]}"

    when "MOVE", "Move", "move"
        y += 1
        puts "moved NORTH to grid #{grid[x][y].reverse}" 
 
    when "DOWN", "Down", "down"
        y -= 1
        puts "Moved SOUTH to grid #{grid[x][y].reverse}"    
 
    when "RIGHT", "Right", "right"
        x += 1
        puts "Moved EAST to grid #{grid[x][y].reverse}" 
 
    when "LEFT", "Left", "left"
        x -= 1
        puts "moved to WEST to grid #{grid[x][y].reverse}" 
 
    when "REPORT", "Report", "report"
        puts "Current position on grid #{grid[x][y].reverse}"        
    
    when "EXIT", "Exit", "exit"
    break

    else
        puts "PLEASE ENTER A VALID COMMAND"
    
    end
end

puts "-"*60
puts "Goodbye!"
puts "-"*60
