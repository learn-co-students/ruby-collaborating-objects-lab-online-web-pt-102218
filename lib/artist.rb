require 'pry'
class Artist
  
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  @@all = []
  
  def add_song(song)
    #song = Song.new(@name)
    @songs << song
  end
  
  def songs 
    @songs 
    
  end
  
  
  def save 
    @@all << self
    self
  end
  
  def self.all 
    @@all 
  end
  
  def self.find_by_name(name)
    all.detect{|artist| artist.name == name}
  end
  
  def self.create_by_name(name) 
    artist = self.new(name)
    artist.save
  end
  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
    
  #   found = all.detect{|artist| artist.name == name}
  #   if found 
  #     found 
  #   else 
  #     artist = self.new(name)
  #     artist.save
  #   end
  end
  
  def print_songs 
    songs.each do |song| 
      puts song.name 
    end 
  end
end