module FunWithStrings
  def palindrome?
     self.downcase!
     self.gsub!(/[^A-Za-z0-9_]/,'')
     if self.reverse == self
        return true
      else
        return false
     end 
  end
  def count_words
    self.downcase!
    self.gsub!(/\-|\!|\,|\.|\"/,'')
    words = self.split(" ")
    frequencies = Hash.new(0)
    words.each{|word| frequencies[word] += 1 }
    return frequencies
  end
  
  def check(x)
    c = []
    if (x.first.scan(/./).sort) == (x.last.scan(/./).sort)
      c << x.first
    end
  end
    
  def anagram_groups
    # your code here
    unless self.empty?
      words = self.split(" ")
      anagram = []
      x = words.combination(2).to_a
      anagram = x.select{|x| check(x) }
      list = words.combination(1).to_a
      return anagram + list
    else
      return []
    end
  
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end

puts "reDivider".palindrome?
puts "This is a test of test of test, test, this this this !!! -- -- -".count_words
#p"this isth another test of htsi this of fo".anagram_groups
p "scream cars for four scar creams".anagram_groups