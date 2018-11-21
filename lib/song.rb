class Song

  attr_accessor :name

  @@all = []

  def initialize(title)
    @name = title
    @@all << self
  end



end
