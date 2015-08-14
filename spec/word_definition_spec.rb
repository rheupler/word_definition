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

describe('#save') do
  it('adds word to array of saved words') do
    test_word = Word.new("Cool")
    test_word.save()
    expect(Word.all()).to(eq([test_word]))
  end
end

describe(".clear") do
  it("empties out all of the saved words") do
    test_word = Word.new("Amazing")
    test_word.save()
    Word.clear()
    expect(Word.all()).to(eq([]))
  end
end





end #end of spec
