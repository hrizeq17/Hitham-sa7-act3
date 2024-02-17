rooms = {
  "1" => { name: "Room 1", points: 5 },
  "2" => { name: "Room 2", points: 10 },
  "3" => { name: "Room 3", points: 15 }
}
total_points = 0

puts "Welcome to the Adventure Game!"
puts "You have #{total_points} points."


loop do
    puts "Choose a room (1-3) to enter or 'exit' to end the game: "
    choice = gets.chomp.downcase
  
    if choice == 'exit'
      break
    elsif rooms.key?(choice)
      room = rooms[choice]
      total_points += room[:points]
      puts "You entered #{room[:name]} and earned #{room[:points]} points."
      puts "You now have #{total_points} points."
    else
      puts "Invalid choice. Please enter a valid room number (1-3) or 'exit'."
    end
  end
 puts "Game over! You collected a total of #{total_points} points."
