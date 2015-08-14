class Word

  @@words = []

  def initialize(word_name)
    @word_name = word_name
    @id = @@words.length().+1
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

  def save
    @@words.push(self)
  end

end #end of class
