class WordCloud
  attr_reader :counts

  def initialize(sayings)
    @counts = Hash.new(0)
    words = sayings.flat_map {|saying| saying.split}
    words.each do |word|
      @counts[word] += 1
      end
    end
  end


  # def numba
  #   h1 = @sayings.map{|x| x.split(" ")}.join(" ").downcase.split(" ").each_with_object(Hash.new(0)) { |word,counts| counts[word] += 1 }
  #      print h1
  # end





# def initialize(words)
#    @words = words
#    h1 = @words.map{|x| x.split(" ").map{|y| y}}.join(" ").downcase.split(" ").each_with_object(Hash.new(0)) { |word,counts| counts[word] += 1 }
#    print h1
#  end
