#creating the artist (if it does not already exist in our program) OR find the instance of that artist ..

class Artist 
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
  end 
  
  # instance method
  def add_song(song) 
    @songs << song 
    song.artist = self
    song
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
  
  # class method
  def self.find_or_create_by_name(name)
    self.all.find {|artist| artist.name === name} || Artist.new(name).save 
    #will either find the artist instance that hadd the same name OR create a new one 
  end
  

  def print_songs
    self.songs.collect {|song| puts song.name}
  end 
end 

