alphabet = ("a".."z").to_a

hash = Hash[alphabet.map.with_index.to_a]

hash.each {|key, value| hash[key] = value + 1 }

hash.delete_if {|key, value| key =~ /\A[^aeiou]/}

puts hash



