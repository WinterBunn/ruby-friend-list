#Hash also know as dictionaries
hash = {'a' => 1, 'b' => 2, 'c' => 3}

p hash['a']

other_hash = {a: 1, b: 2, c: 3} #ruby call this symbols

p other_hash[:b]

p other_hash.keys #return the keys

p other_hash.values #return the values

other_hash.each { |somekey, somevalue| puts "The key is #{somekey} and the value is #{somevalue}" }

other_hash[:e] = "Rios" #adds another value to the dictionary

other_hash[:c] = "Carly" #changes the value of c

p other_hash

#Use select method to display items only if value of the item is odd
myhash.select { |k, v| v.odd? }

#removes the key if the value is a string
myhast.each { |k,v| myhash.delete(k) if v.is_a?(String)}