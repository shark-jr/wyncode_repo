puts "The search for the Golden Vape,"
puts "👻  Welcome to the Spooky Mansion 👻"
print "\n"
puts "Options:
1. Approach the Mansion door,
2. Exit game"

option = gets.chomp.downcase

def start_game
  puts "You approach the Mansion door."
  sleep 1
  puts "It's locked, what would you like to do?"
  puts "\n"
  puts "Options:
  1. Search for key,
  2. Break the door down"
  door_choice = gets.chomp.downcase
  if door_choice == "1"
    puts "Searching..."
    sleep 3
    puts "You find the key in the bushes!"
    puts "\n"
    enter_mansion
  else
    puts "You smash the door down"
    sleep 3
    puts "A zombie awakes from his slumber and eats your BRAINS!"
    puts "Oops, you ded! Would you like to try again? yes / no"
    try_again = gets.chomp.downcase
    if try_again == "yes"
      start_game
    else
      exit
    end
  end
end

def enter_mansion
  puts "The powers cut, look for a light source?"
  puts "\n"
  puts "Options:
  1. Use cell phone,
  2. Check drawer,
  3. Continue in darkness"
  user_input = gets.chomp
  if user_input == "1"
    puts "Your phone dies shortly after entering"
    puts "\n"
    enter_mansion
  elsif user_input == "2"
    puts "Checking drawer..."
    sleep 1
    puts "You found a flashlight!"
    puts "\n"
    start_search
  elsif user_input == "3"
    puts "Ouch! Stubbed my toe.."
    puts "\n"
    enter_mansion
  else
    puts "Please enter a valid command!!"
    puts "\n"
    enter_mansion
  end
end

def start_search
  puts "Time to search for the Golden Vape!"
  puts "Options:
  1. Check the kitchen,
  2. Check the bedroom,
  3. Check the study"
  user_input = gets.chomp
  case user_input
  when "1"
    puts "I'm not hungry"
    puts "\n"
    start_search
  when "2"
    search_bedroom
  when "3"
    puts "You mean an office? .. Rich people 😩 Nothing here.."
    puts "\n"
    start_search
  else
    puts "Please enter a valid option!!"
    puts "\n"
    start_search
  end
end

def search_bedroom
  puts "Check..
  1. The nightstand,
  2. Under the bed,
  3. The dresser"
  user_input = gets.chomp
  case user_input
  when "1"
    puts "Searching nightstand.."
    sleep 2
    puts "EW! You find foreign objects"
    puts "\n"
    search_bedroom
  when "2"
    puts "Checking under the bed.."
    sleep 1
    puts "A spooky figure appears, BROO! SPOOKED YA, GOTCHA!"
    search_bedroom
  when "3"
    puts "Checking the dresser.."
    sleep 3
    puts "You find Ed Begley Jr's journal"
    puts "\n"
    the_clue
  else
    puts "Please enter a valid command!!"
    puts "\n"
    search_bedroom
  end
end

def the_clue
  puts "Ed Begley Jr's journal"
  sleep 2
  puts "Entry 1..
  I spend most my after noons in my basement, infront of the fireplace,
  enjoying the fattest of rips."
  sleep 1
  puts "I think this might be a clue.. We should check the basement"
  puts "Options:
  1. Head to the basement?
  2. Leave the Mansion"
  user_input = gets.chomp
  case user_input
  when "1"
    puts "Heading to the basement.."
    puts "\n"
    sleep 3
    golden_vape
  when "2"
    puts "The doors locked, no going back now!"
    the_clue
  else
    puts "Please enter a valid command!!"
    puts "\n"
    the_clue
  end
end

def golden_vape
  puts "Where should we begin the search?"
  puts "Options:
  1. Ed Begley Jr's chair,
  2. Search through the rusty toolbox,
  3. Dig through the fireplace ashes"
  user_input = gets.chomp
  case user_input
  when "1"
    puts "Nothing interesting here!"
    puts "\n"
    golden_vape
  when "2"
    puts "Great, I think I need a tetanus shot now"
    puts "\n"
    golden_vape
  when "3"
    puts "You see a shimmering light shining through the ashes"
    sleep 3
    puts "WE FOUND IT!
    Time to blow the biggest rip the world has ever seen"
    sleep 3
    puts "The End."
  else
    puts "Please enter a valid command!!"
    puts "\n"
    golden_vape
  end
end

case option
when "1" then start_game
when "2" then exit
end
