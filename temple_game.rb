# Temple of the Ruby Serpent
# A small Ruby text-adventure game

def prompt(message)
  puts message
  print "> "
  gets.chomp.downcase
end

has_gem = false

puts "You stand at the entrance of the ancient Temple of the Ruby Serpent."
puts "Legends say a priceless gem lies within."

loop do
  choice = prompt("Do you ENTER the temple or LEAVE? (enter/leave)")

  if choice == "leave"
    puts "You walk away safely, but empty-handed. Game Over."
    exit
  elsif choice == "enter"
    puts "You step into the dim, dusty hall..."
    break
  else
    puts "I didn't understand that."
  end
end

puts "\nInside, torches flicker to life on the walls."

pick = prompt("You see a faint red glow on a pedestal. Take the glowing object? (y/n)")

if pick == "y"
  puts "You pick up a small ruby gem. It pulses warmly in your hand."
  has_gem = true
else
  puts "You ignore the glowing object and continue walking..."
end

puts "\nYou reach a split in the path: left or right?"

path = prompt("Which way? (left/right)")

if path == "left"
  puts "\nThe corridor narrows into total darkness."

  if has_gem
    puts "The ruby gem glows bright red, revealing hidden traps."
    puts "You avoid them and reach a chamber filled with ancient treasure!"
    puts "YOU WIN!"
  else
    puts "You walk straight into a hidden spike trap."
    puts "The temple claims another victim. Game Over."
  end

elsif path == "right"
  puts "\nYou walk into a massive stone chamber..."
  puts "A giant serpent awakens, its eyes glowing red."

  if has_gem
    puts "The gem shines brightly — the serpent lowers its head in respect."
    puts "It slithers aside, revealing a hidden exit to freedom."
    puts "YOU ESCAPED WITH THE GEM! Victory!"
  else
    puts "The serpent strikes before you can react."
    puts "Game Over."
  end

else
  puts "\nLost and confused, you wander until the temple collapses."
  puts "Game Over."
end
