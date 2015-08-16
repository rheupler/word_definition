class Definition

  # @@definitions = []

  def initialize(definition)
    @definition = definition
    # @id = @@definitions.length().+(1)
  end

  def definition
    @definition
  end

  # def id
  #   @id
  # end

  # define_singleton_method(:all) do
  #   @@definitions
  # end

  # def save
  #   @@definitions.push(self)
  # end

  # define_singleton_method(:clear) do
  #   @@definitions = []
  # end

  # define_singleton_method(:find) do |identification|
  #   found_definition = nil
  #   @@definitions.each() do |definition|
  #     if definition.id().eql?(identification.to_i())
  #       found_definition = definition
  #     end
  #   end
  #   found_definition
  # end
end

# removed variables and methods not needed for this exercise