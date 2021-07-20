require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("Josiane")
player2 = Player.new("José")

puts "Voici l'état de chaque joueur : "
puts " "
puts "#{(player1.show_state)} #{(player2.show_state)}"



while player1.life_points > 0 && player2.life_points > 0 
		puts " "
		puts "Passons à la phase d'attaque :"
		puts " "
		player1.attacks(player2)
		player2.attacks(player1)
		puts " "
		puts "Voici l'état de chaque joueur : "
		puts " "
		puts "#{(player1.show_state)} #{(player2.show_state)}"
end

	if player1.life_points <= 0 then 		
	puts " "
	puts "#{(player1.name)} est mort !" 
	elsif player2.life_points <= 0 then
	puts "#{(player2.name)} est mort !"
	puts " "
	end


binding.pry
