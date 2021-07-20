require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'



### Accueil de bienvenue
puts "----------------------------------------------------"
puts "|Bienvenue sur 'Ils veulent tous ma peau!!'|       |"
puts "|Le but du jeu est d'être le dernier survivant !   |"
puts "----------------------------------------------------"  
puts " "

### Initialisation du joueur
user = HumanPlayer.new("marie")


### Initialisation des ennemis 
player1 = Player.new("Josiane")
player2 = Player.new("Josée")

array_enemy = [player1, player2]


#### Combat 
while user.life_points >0 && (player1.life_points > 0 || player2.life_points > 0 ) 

	puts " "
	puts "Quelle action veux-tu effectuer?"
	
	puts "a - chercher une meilleure arme"
	puts "s - chercher à se soigner"
	puts " "
	puts "attaquer un joueur en vue :"
	puts "0 - #{player1.name} a #{player1.life_points} points de vie"
	puts "1 - #{player2.name} a #{player2.life_points} points de vie"
	puts " "
	print ">"
	
	answer = gets.chomp
	
	if answer == "a"
		puts " "
		 user.search_weapon
		 puts " "
	end
	
	if answer == "s"
		user.search_health_pack
		puts " "
	end
	
	if answer == "0"
		user.attacks(player1)
		puts " "
	end
	
	if answer == "1"
		user.attacks(player2)
		puts " "
	end
	
	puts " "
	puts "Les autres joueurs t'attaquent !"
	puts " "
	
	puts " "
	array_enemy.each do |players|
			if players.life_points > 0  
			players.attacks(user)
			puts " "
			end
		end
end
		puts " "
		puts "La partie est finie"
		
	if user.life_points > 0 
		puts "BRAVO	! TU AS GAGNE!"
		else 
		puts "LOSER!"
	end
	




