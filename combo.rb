
def first_name ()
	puts "Entrez votre nom"
	first_name = gets.chomp
end
def say_hello (first_name)
	puts "Bonjour #{first_name}!"	
end	
def perform
	say_hello(first_name)
end
perform