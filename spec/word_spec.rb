require('rspec')
require('./lib/word')

describe Word do
  before do
    Word.clear
    @test_word = Word.new('pasta')
  end

  describe ('#name') do
    it("returns the name of word") do
      #test_word = Word.new("lab", "a breed of dog")
      expect(@test_word.name).to(eq("pasta"))
    end
  end

  describe ('#words') do
    it ('returns an empty array of words') do
      expect(Word.all_words).to eq []
    end
  end

  describe ('#save') do
    it 'adds a new word to the array of words' do
      @test_word.save
      expect(Word.all_words).to eq [@test_word]
    end
  end

  describe '.clear' do
    it 'empties out all the saved words' do
      Word.clear
      expect(Word.all_words).to eq []
    end
  end

  describe '.find' do
    it 'returns a word by matching the given word name' do
      @test_word.save
      test_word1 = Word.new("lab")
      test_word1.save
      expect(Word.find("lab")).to eq test_word1
    end
  end





end
