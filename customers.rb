class Customers

attr_accessor :id, :first_name, :last_name, :email, :notes, :add

	def initialize 
		@id = Fixnum
		@first_name = ""
		@last_name = ""
		@email = ""
		@notes = ""
	end

	def id_prompt
		# "puts"
	end

	def first_prompt
		puts "What is the client's first name, please?"
		@first_name = gets.chomp
	end

	def last_prompt
		puts "What is the client's last name, please?"
		@last_name = gets.chomp
	end

	def email_prompt
		puts "What is the client's email, please?"
		@email = gets.chomp
	end

	def notes_prompt
		puts "Any notes on this client?"
		@notes = gets.chomp
	end



end

