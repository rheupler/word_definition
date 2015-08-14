require('rspec')
require('word')
# require("definition")

describe(Word) do

  describe('#name') do
  it('returns word name') do
    test_word = Word.new("Sick")
    expect(test_word.word_name()).to(eq("Sick"))
  end
end

describe('#id') do
  it('returns the id of word') do
    test_word = Word.new("Awesome")
    expect(test_word.id()).to(eq(1))
  end
end





end #end of spec
