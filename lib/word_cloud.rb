require_relative '../data/data.rb'
class WordCloud

  def initialize(sayings)
    @sayings = sayings
    puts @sayings
  end

  def numba
    counter = @sayings.map {|x| x.split(" ").map {|y| y}}

  end
end

puts WordCloud.new(SAYINGS).numba


# def initialize(words)
#    @words = words
#    h1 = @words.map{|x| x.split(" ").map{|y| y}}.join(" ").downcase.split(" ").each_with_object(Hash.new(0)) { |word,counts| counts[word] += 1 }
#    print h1
#  end
