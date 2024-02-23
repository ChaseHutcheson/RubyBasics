# Symbols are basically strings, but they have unique identifiers within them, unlike other data types
# This makes them useful for things like hash keys
user = {
    :first_name => "Chase",
    :last_name => "Hutcheson",
    :email => "test@gmail.com",
    :password_digest => "Bo987yh0987yhoYUIG90dsDS69"
}

puts user[:first_name]


# Enumeration using symbols
status = :success
case status
when :success
  puts "Operation succeeded!"
when :error
  puts "An error occurred."
end