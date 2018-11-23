require 'pry'
class Artist

  attr_accessor :name, :songs

  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

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
    @@all << create_artist_by_name
    create_artist_by_name
  end

  def self.find_or_create_by_name(name)
     self.find_by_name(name) || self.create_by_name(name)
  end

  def print_songs
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
end
