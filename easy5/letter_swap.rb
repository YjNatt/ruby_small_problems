def swap(str)
  words = str.split(" ").map do |word|
    word[0], word[-1] = word[-1], word[0]
    word
  end

  p words.join(" ")
end

def swap_first_last_characters(a, b)
  a, b = b, a
end

def swap(words)
  result = words.split.map do |word|
    word[0], word[-1] = swap_first_last_characters(word[0], word[-1])
    word
  end
  result.join(' ')
end

p swap('Oh what a wonderful day it is')# == 'hO thaw a londerfuw yad ti si'
p swap('Abcde')# == 'ebcdA'
p swap('a')# == 'a'