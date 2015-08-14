class Word
  @@words = []
  def initialize(name)
    @name = name

  end

  def name
    @name
  end

  def self.all_words
    @@words
  end

  def save
    @@words.push(self)
  end

  def self.clear
    @@words = []
  end

  def self.find(name)
    found_word = nil
    @@words.each do |word|
      if word.name.eql?(name)
        found_word = word
      end
    end
    found_word
  end

end
