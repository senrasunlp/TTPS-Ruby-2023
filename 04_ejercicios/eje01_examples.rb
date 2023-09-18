#EXAMPLE 1
my_bologna = {
:first_name => "Oscar",
:second_name => "Meyer",
:slices => 12
}

puts my_bologna[:second_name] # => Meyer

#Symbols must be valid Ruby variable names and always start with a colon (:).


#EXAMPLE 2
my_progress = {
:program => "Codecademy",
:language => "Ruby",
:enthusiastic? => true 
}
#Key symbols and their values can be defined with a =>, also known as a hash rocket.

my_progress = {
program: "Codecademy",
language: "Ruby",
enthusiastic?: true 
}
#Key symbols and their values can also be defined with the colon (:) at the end of the symbol followed by its value.

#Create array with new

Array.new(4) {Hash.new}    #=> [{}, {}, {}, {}]
Array.new(4) {|i| i.to_s } #=> ["0", "1", "2", "3"]

#HASH
#Create a Hash literal with { } and separate your keys and values with =>, like this:
grades = { "Jane Doe" => 10, "Jim Doe" => 6 }

#A Hash can also be created through its ::new method:

grades = Hash.new
grades["Dorothy Doe"] = 9