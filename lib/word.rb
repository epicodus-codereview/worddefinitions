class Word
  @@words = []
  def initialize(name, definition)
    @name = name
    @definition = definition

  end

  def name
    @name
  end

  def definition
    @definition
  end

  def self.all_words
    @@words
  end

end
