class Word
  @@words = []
  def initialize(name)
    @name = name
    @all_definitions = []
  end

  def name
    @name
  end

  def all_definitions
    @all_definitions
  end

  def save_definition(definition)
    @all_definitions.push(definition)
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
