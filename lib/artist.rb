require "pry"

class Artist
  
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)  #Michael Jackson is created here
    @name = name
    @songs = []
  end
  
  
  def add_song(new_song) #We want to add a song to the Artists portfolio
    @songs << new_song
  end
  
  
  def save  #Michael Jackson is saved inside of the @@all class variable that keeps track of all the Artists
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.find_or_create_by_name(artist) 
    @@all.each do |person|
      if person.name == artist
         return person
      end
    end
   new_artist = self.new(artist)
   new_artist.save
   new_artist
  end
  
  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
  
end