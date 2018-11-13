class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    artist = file.split(" - ")[0]
    song_name = file.split(" - ")[1]
    foo = self.new(song_name)
    foo.artist = Artist.find_or_create_by_name(artist)
    foo.artist.save
    foo.artist.add_song(song_name)
    return foo
  end
end
