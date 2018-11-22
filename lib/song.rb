class Song

<<<<<<< HEAD
  attr_accessor :name , :artist
=======
  attr_accessor
>>>>>>> e1744eba359f3ca9d52c5440a54f5241511d42b1

  @@all = []

  def initialize(title)
<<<<<<< HEAD
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
   song.artist = artist
   artist.songs << song
   song




  end
=======
    @title = title
    @@all << self
  end


>>>>>>> e1744eba359f3ca9d52c5440a54f5241511d42b1

end
