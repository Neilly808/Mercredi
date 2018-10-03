def define_password
	puts "Entrez votre mot de passe :"
	 @user_password = gets.chomp.to_s
end

def password_verification (define_password)
	puts "confirmation de votre mot de passe :"
	verification = gets.chomp.to_s

	while verification != @user_password
		puts "votre mot de passe de correspond pas"
		verification = gets.chomp.to_s
	end
end

def connect(define_password)
	puts "Entrez votre mot de passe pour vous connécté:"
	connect = gets.chomp.to_s
	while connect != @user_password
		puts "réentrez votre mot de passe"
		connect = gets.chomp.to_s
	end
	puts "tu es connécté"
end

def perform
connect(define_password)
end 


perform