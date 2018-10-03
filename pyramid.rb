def number_asker
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
  etage = Integer(gets.chomp)
  dieze = 1
  while etage > 0
    etage -=1
    puts " "*etage << "#"*dieze
    dieze += 2
  end
end
number_asker