class Song 
  
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name 
  end
  
  def self.new_by_filename(filename)
    out = filename.split(/[-.]/)
    out = out.map {|i| i.strip}
    song = Song.new(out[1])
    song.artist = Artist.new(out[0])
    song.artist.save
    song.artist.add_song(song.name)
    song
  end
end