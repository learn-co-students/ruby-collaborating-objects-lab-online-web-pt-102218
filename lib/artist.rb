require "pry"

class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def save
    # binding.pry
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    @@all.each do |artist|
      if artist.name == name
        return artist
        break
      end
    end
    x = Artist.new(name)
    return x
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end
