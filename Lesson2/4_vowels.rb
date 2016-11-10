alphabet = ("a".."z")

hash = {}

alphabet.each_with_index do |key, index|
  hash[key] = index + 1 if %w(a e o u i).include?(key)
end

puts hash



