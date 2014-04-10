# Encoding: utf-8

def louchebemize(sentence)
  #TODO: implement your louchebem translator
word_array = sentence.split(" ")

suffixes = ["em", "é", "ji", "oc", "ic", "uche", "ès"]
suffix = suffixes.shuffle.first


  word_array.each do |word|

    if word.length == 1
      word = word
    elsif word.include?("!")
      word = word
    elsif word.include?("?")
      word = word
    elsif word.include?(":")
      word = word
    elsif word.include?(",")
      word = word
    elsif word[0].include?["a", "e", "i", "o", "u", "y"]
      word = "l" + word + suffix
    else
      word = word + suffix
    end
  end

  print word_array.join(" ")

end