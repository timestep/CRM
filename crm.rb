require './customers'
require './databases'

@the_database = Databases.new
@customercount = 0

def clear
	puts "\e[H\e[2J"
end

def add

	@customercount+=1
	@newCustomer = Customers.new
	@newCustomer.first_prompt
	@newCustomer.last_prompt
	@newCustomer.email_prompt
	@newCustomer.notes_prompt
	@newCustomer.id = @customercount
	#call for length of database
	
	puts "inside add:"
	puts "about to add_customer_to_storage."
	@the_database.add_customer_to_storage(@newCustomer)
	puts @the_database.storage
end

def search(query)
	query = query.downcase
	@the_database.storage.each_with_index do |customer, index|
		if query == customer.id or customer.first_name or customer.email or customer.notes
			return index
			break
		else
			"Could not find your customer! He must have been kidnapped."
		end
	end	
end

def remove
	puts "Please input a search term"
	query=gets.chomp.downcase
	x=search(query)
	@the_database.storage.delete_at(x)
	@customercount-=1
end

def display
	puts "What are you looking for?"
	puts "Please input a serach term"
	query=gets.chomp.downcase
	x=search(query)
	index=x

	puts @the_database.storage[index].id
	puts @the_database.storage[index].first_name
	puts @the_database.storage[index].last_name
	puts @the_database.storage[index].email
	puts @the_database.storage[index].notes
end

def diplay_all
	puts @the_database.storage.id
	puts @the_database.storage.first_name
	puts @the_database.storage.last_name
	puts @the_database.storage.email
	puts @the_database.storage.notes
end

def modify

	puts "Who to Modify?"
	query=gets.chomp.downcase
	x=search(query)
	@the_database.storage[x].id_prompt
	@the_database.storage[x].first_prompt
	@the_database.storage[x].last_prompt
	@the_database.storage[x].email_prompt
	@the_database.storage[x].notes_prompt

end

def delete
	puts "Are you Sure? [Y/N]"
	input = gets.chomp.downcase
	if input == "y"
		@the_database.storage=nil
	elsif input == "n"
		puts "Nothing deleted"
		return
	else
		puts "Nothing Happened."
		
	end
end


def selections
	puts "Welcome"
	puts "Please make a selection"
	puts ""
	puts "add"
	puts "remove"
	puts "display"
	puts "display all"
	puts "modify"
	puts "delete"
	puts "exit"
end
#print @nb_customers

while true
	selections
	input=gets.chomp
	clear
	if input == "add"
		add
		clear
	elsif input == "remove"
		remove
		clear
	elsif input == "display"
		display
	elsif input == "diplay all"
		display_all	
	elsif input == "modify"
		modify
		clear
	elsif input == "delete"
		delete
		clear
	elsif input == "search"
		search		
		clear
	else input == "exit"
		break
	end	

	# the_database.display_customer(0).to_s
		
	

end


