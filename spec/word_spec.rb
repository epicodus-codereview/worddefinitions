require('rspec')
require('./lib/word')


describe Word do
  #before do
    #Word.clear
  #end

  describe ('initialize') do
    it ('initialize instance for word class') do
      test_word = Word.new("apple", "a type of fruit")
      expect(test_word.name).to(eq("apple"))
    end
  end

  describe ('#name') do
    it("returns the name of word") do
      test_word = Word.new("lab", "a breed of dog")
      expect(test_word.name).to(eq("lab"))
    end
  end

  describe ('#definition') do
    it('returns the definition') do
      test_word = Word.new('lab', 'a breed of dog')
      expect(test_word.definition).to(eq("a breed of dog"))
    end
  end

end
