class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
  #binding.pry
   song = self.new(filename)
   song.name = filename.split(" - ")[1]
   song
 end

end
