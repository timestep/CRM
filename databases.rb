class Databases

attr_accessor :add_customers, :remove_customers, :storage, :modify_customers, :search_customers, :database, :nb_customers

	def initialize
		@storage = []
	end  

	def add_customer_to_storage(customer)
		@storage << customer
	end

	def remove_prompt
	end

	def modify_prompt
	end

	def search_prompt
	end

	def display_customer(index)
		puts @storage[index]
	end

	def customer_specific(index,property)
		temp = @storage[index]
	end

	#@nb_customers = @storage.length

	def storage
		return @storage
	end


end