class Song


  attr_accessor :name , :artist

  @@all = []

  def initialize(title)
    @name = title
    @@all << self
  end

  def self.new_by_filename(filename)
    # song = self.new(filename)
    # song.name = filename.split(" - ")[1]
    # song

    artist_name = filename.split(" - ")[0]
    song_name = filename.split(" - ")[1]
   song = Song.new(song_name)
   artist = Artist.find_or_create_by_name(artist_name)
   artist.songs << song
   binding.pry
   song
 end

end
