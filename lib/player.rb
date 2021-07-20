####### Partie 1 : coder un combat entre 2 joueurs ##########


require "pry"
require "time"


class Player 
	attr_accessor :name, :life_points, :weapon_level
	@@damage1 = rand(1..6)
		def initialize(name_to_save)
			@name = name_to_save
			@life_points = 10
		end
		
		
		def show_state
			puts "#{@name} a #{@life_points} points de vie"
		end
		
		
		def gets_damage(damages_occured)
			@life_points = @life_points - damages_occured
		end
	
		
	def attacks(player)
			puts "Le joueur #{@name} attaque le joueur #{(player.name)}"
			@@damage1 = compute_damage
			player.gets_damage(@@damage1)
			puts "#{@name} inflige à #{(player.name)} #{@@damage1} points de dommages"	
	end
	


		def compute_damage
			return rand(1..6)
		end
			
		
end



class HumanPlayer < Player
		def initialize(name_to_save)
					@name = name_to_save
					@life_points = 100
					@weapon_level = 1
		end
		
	
		def show_state
				puts "#{@name} a #{@life_points} points de vie et une arme de niveau #{@weapon_level}"
		end
		
		
		def compute_damage
			rand(1..6) * @weapon_level
		end
		
		def search_weapon
			de = rand(1..6)
			second_weapon_level = de 
			puts "tu as trouvé une arme de niveau #{second_weapon_level}"
				if second_weapon_level > @weapon_level then
					@weapon_level = second_weapon_level
					puts "YOUhou elle est d'un meilleur niveau que la précédente, je la garde!"
						elsif second_weapon_level <= @weapon_level then
						@weapon_level = @weapon_level 
						puts " Fichtre ! je garde mon ancienne arme!"
				end
			end
			
			
	def search_health_pack
		de_2 = rand(1..6)
			if de_2 == 1
			puts "tu n'as rien trouvé"
				elsif ( de_2 >= 2 && de_2 <= 5 ) 
					@life_points += 50 until @life_points == 100
					puts "tu as trouvé un pack de 50 points!"
							elsif de_2 == 6 
								@life_points += 80 until @life_points == 100
								puts "tu as trouvé un pack de 80 points!"

				end
						
		end
					
			
			
end


binding.pry




#### Boucle non fonctionnelle #####
	#def loop(player)
		#while player1.gets_damage(@@damage1) != 0 && player.gets_damage(@@damage1) != 0 do
		#attacks(player)
			#if player1.gets_damage(@@damage1) == 0 || player.gets_damage(@@damage1) == 0 then
				#puts "la partie est finie"
			#end
		#end
	#end
	
