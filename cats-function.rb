require './cats-meow.rb'

whiskers = Cat.new("Whiskers", "Meow Mix", 21)
mittens = Cat.new("Mittens", "Kitty Chow", 12)

puts whiskers.eats_at
puts mittens.eats_at

puts whiskers.meow
puts mittens.meow

puts "finished!"
