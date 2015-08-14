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

end #end of class
