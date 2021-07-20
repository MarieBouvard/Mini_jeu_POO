	while @life_points > 0 && player.life_points > 0 do
				puts "Le joueur #{@name} attaque le joueur #{(player.name)}"
				@@damage1 = compute_damage
				player.gets_damage(@@damage1)
				puts "#{@name} inflige à #{(player.name)} #{@@damage1} points de dommages"
				if @life_points == 0 then 
					puts "#{@name} est mort"
				elsif	player.life_points == 0 then
					puts "#{(player.name)} est mort"
							break
				end
		end		
	end
