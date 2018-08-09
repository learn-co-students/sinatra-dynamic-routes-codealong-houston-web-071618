class Name
  attr_accessor :name
  @@nameall = []
  def initialize(name)
    @name = name
    self.class.all << self
  end



end
