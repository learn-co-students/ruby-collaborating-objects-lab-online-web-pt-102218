class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(name)
    song = self.new
    song.name = filename.split(" - ")[1]
    song
  end


end
