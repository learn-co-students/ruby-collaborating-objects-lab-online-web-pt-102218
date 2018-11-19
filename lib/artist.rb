require "pry"
class Artist

  attr_accessor :name, :songs

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    self.name = name
    self.songs = []
    self.save
  end

  def add_song(song)
    song.artist = self
    self.songs << song
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(artist_name)
    @@all.each do |artist|
      if artist.name = artist_name
        return artist
      end
    end
    Artist.new(artist_name)
  end

  def print_songs
    self.songs.each do |song|
      puts "#{song.name}"
    end
  end
end
