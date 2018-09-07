# animals = ["monkeys", "gorilla", "elephant", "snake"]

# animals.each_with_index do |animal, index|
#     puts "#{index + 1}- #{animal.capitalize}"
  
#     unless animal != "elephant"
#         break
#     end
# end

# count = 1
# while count < 39 do 
#     puts "#{count} Bird is the word"
#     count += 1 
    
# end

# number = rand 1..100

# case number
#     when 1...50
#         puts " yay you randomly got 4"
#     else 
#         puts "meh, try again"
#     end

# switching
# answer = gets.chomp
# case answer
#     when "yes"
#         puts "i get to go home now"
#     when "no"
#         puts "you stay at the coder academy bootcamp"
#     else
#         puts 'limbo land'
#     end

loop do

  input = gets.chomp.downcase

  case input
  when 'help'
    puts "Available commands are..."

    # more when statements go here...
  when 'exit'
    break

  else
    puts "That is not a valid command. Type 'HELP' for available commands."
  end

end

puts "Goodbye!"

    