class Escalier


	def pyramide(chiffre = 2)
		etage = 10
		col = etage * 2
		space = etage + 1
		for cols in 1..col
			if cols % 2 != 0 then
				dieze = "#"*cols
				space -= 1
				if space == chiffre then
					espace = " "*(space-1)+"U" 
					puts "#{espace}#{dieze}"
				else
					espace = " "*space 
					puts "#{espace}#{dieze}"
				end
			end	
 		end
	end



	def gamers
		
		pyramide
		position = 2
		verification = true
		loop do
			puts "======================================="
			print "Appuyer sur entrer pour lancé le dé"
			gamer = gets.chomp
			chiffre = rand(1..6)
				if chiffre == 5 || chiffre == 6 then
					position += 1
					if position == 11 then
						
						pyramide(position)
						
						puts " ========================"
						puts "| Voila tu a gagner!!!!! |"
						puts " ========================"
						verification = false
					else	
						
						pyramide(position)
						
						puts "Vous êtes à la #{position}ème position"
					end
				elsif chiffre == 1 then
					position -= 1
					if position < 2 then
						puts " =================="
						puts "| GAME OVER !!!!!! |"
						puts " =================="
						verification = false
					else
						
						pyramide(position)
						
						puts "Vous êtes à la #{position}ème position"
					end
				else
				
						pyramide(position)
						
					puts "Vous êtes à la #{position}ème position"
				end
			break if verification == false
		end
	end
end

pyramide = Escalier.new
pyramide.gamers