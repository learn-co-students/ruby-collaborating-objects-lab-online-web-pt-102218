require 'pry'
class Artist

  attr_accessor :name, :songs
<<<<<<< HEAD

=======
>>>>>>> e1744eba359f3ca9d52c5440a54f5241511d42b1
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
<<<<<<< HEAD
  #  @@all << self
  end

=======
    @@all << self
  end
>>>>>>> e1744eba359f3ca9d52c5440a54f5241511d42b1
  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find {|s| s.name == name}
  end

  def self.create_by_name(name)
    create_artist_by_name = Artist.new(name)
<<<<<<< HEAD
    @@all << create_artist_by_name
=======
    @@all << self
>>>>>>> e1744eba359f3ca9d52c5440a54f5241511d42b1
    create_artist_by_name
  end

  def self.find_or_create_by_name(name)
     self.find_by_name(name) || self.create_by_name(name)
  end

  def print_songs
<<<<<<< HEAD
    # Artist.all.each do |artist|
    #   artist.songs.each do |song|
    #     puts song.name
    #   end
    #
    # end
    songs.each do |song|
      puts song.name
    end
  end



=======
    binding.pry
  end
>>>>>>> e1744eba359f3ca9d52c5440a54f5241511d42b1
end
