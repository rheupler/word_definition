require('rspec')
require('word')
require("definition")

describe(Word) do

  before() do
    Word.clear
  end

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

  describe('.find') do
    it('finds the word by its id number') do
      test_word = Word.new("Amazing")
      test_word.save()
      test_word2 = Word.new("Cool").save()
      expect(Word.find(test_word.id())).to(eq(test_word))
    end
  end

  describe("#add_definition") do
    it("adds a new definition to a word") do
      test_word = Word.new("Awesome")
      test_definition = Definition.new("Being really cool")
      test_word.add_definition(test_definition)
      expect(test_word.meaning()).to(eq([test_definition]))
    end
  end

end #end of spec

describe('Definition') do

  describe("#year") do
    it("returns the definition") do
      test_definition = Definition.new("Being really cool")
      test_definition.save()
      expect(test_definition.definition()).to(eq("Being really cool"))
    end
  end
end
