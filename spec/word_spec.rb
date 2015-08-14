require('rspec')
require('./lib/word')


describe Word do
  #before do
    #Word.clear
  #end

  describe 'initialize' do
    it ('initialize instance for word class') do
      test_word = Word.new("apple", "a type of fruit")
      expect(test_word.name).to(eq("apple"))
    end
  end

end
