def anagrams?(a_string, another_string)
  #TODO: implement the obvious method to test if two words are anagrams
a_string_ordered = a_string.delete('! ',).downcase.chars.sort.join
another_string_ordered = another_string.delete("! ").downcase.chars.sort.join
another_string_ordered == a_string_ordered

end



def anagrams_on_steroids?(a_string, another_string)
  #TODO: implement the improved method
a_string_ordered = a_string.delete('! ',).downcase.chars.sort.join
another_string_ordered = another_string.delete("! ").downcase.chars.sort.join

hash = {}
a_string_ordered.each_char do |char|
  if hash[char]
    hash[char] += 1
  else
    hash[char] = 1
  end
end

hash2 = {}
another_string_ordered.each_char do|char|
  if hash2[char]
    hash2[char] += 1
  else
    hash2[char] = 1
  end
end
hash == hash2

end


