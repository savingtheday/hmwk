class Elephant
  attr_reader :name
  def initialize(name)
  @name = name
  end
end

elephant = Elephant.new("Dumbo")
elephant.name
