# setup for an exception

def yup
	raise Exception.new("neinneinnein")
end

begin
	yup
rescue Exception => e
	puts "you're right! #{e.inspect}"
end


# Ruby Monk Problem
EXAMPLE_SECRETS = ["het", "keca", "si", nil, "iel"]

def decode(jumble)
  secret = jumble.split("").rotate(3).join("")
  announce(secret)
  secret
end

def decode_all(secrets)
  secrets.map {|s| decode(s) }
rescue
  puts "whew! safe."
end

# my failed attempt.
#def decode_all(["arg1", *rest])
# 	raise Exception.new(decode)
# end

# begin
# rescue Exception => e

# end




