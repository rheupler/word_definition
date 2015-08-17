class Word

  @@words = []

  def initialize(word_name)
    @word_name = word_name
    @id = @@words.length().+1
    @meanings = [] # pluralized array name to make it clearer, since it will hold multiple definitions
  end

  def meanings
    @meanings
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
    @@words.clear() # fixed indentation
  end # fixed indentation

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
    found_word # fixed indentation
  end

  def add_definition(definition)
    @meanings.push(definition)
  end

end #end of class
