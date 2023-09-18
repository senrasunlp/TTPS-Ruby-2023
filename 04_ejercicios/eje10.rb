#Cuál es el valor de retorno del siguiente código?


[:upcase, :downcase, :capitalize, :swapcase].map do |meth|
    "TTPS Ruby".send(meth)
end

# Explain the code above
# => [:upcase, :downcase, :capitalize, :swapcase] is an array of symbols
# => map is a method of the Array class
# => map iterates over the array and returns a new array with the results of running the block once for every element
# => "TTPS Ruby".send(meth) is the block
# => "TTPS Ruby" is the receiver
# => meth is the argument
# => meth is a symbol, so it is a valid argument for send
# => send is a method of the Object class
# => send invokes the method identified by the symbol
# => send returns the result of the method invocation
# => The result of the block is the result of the invocation of the method identified by the symbol on the receiver
# => The result of the block is an array of strings


# => ["TTPS RUBY", "ttps ruby", "Ttps ruby", "ttps rUBY"]

