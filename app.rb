require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("José")
player2 = Player.new("Max")

while player1.life_points > 0 && player2.life_points > 0
puts "----"

puts "Voici l'état des joueurs:" #State of life point"
puts "#{player1.show_state}"
puts "#{player2.show_state}"
puts "Que la force soit avec vous"
puts "                               "

puts "Passons à la phase d'attaque" #Loop that stops if the life points of one of the two players is 0.
puts "------------"

player1.attack(player2)
if player2.life_points <= 0
    break
end
puts "  "
puts "L'empire contre attaque"
puts "  "
player2.attack(player1)
if player1.life_points <= 0
    break
end
end
puts "/////////////////////////////"

binding.pry