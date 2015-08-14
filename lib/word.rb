class Word

  @@words = []

  def initialize(word_name)
    @word_name = word_name
    @id = @@words.length().+1
    @meaning = []
  end

  def meaning
    @meaning
  end

  def word_name
    @word_name
  end

  def id
    @id
  end

  define_singleton_method(:all) do
    @@words
  end

  define_singleton_method(:clear) do
  @@words.clear()
end

  def save
    @@words.push(self)
  end

  define_singleton_method(:find) do |identification|
    found_word = nil
    @@words.each() do |word|
      if word.id() == identification.to_i
        found_word = word
      end
    end
      found_word
  end

  def add_definition(definition)
    @meaning.push(definition)
  end

end #end of class
