require 'pry'
class Artist 
  
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    @songs << song
    @songs
  end
  
  def save
    @@all << self 
  end
  
  def self.find_or_create_by_name(name)
    @@all.find { |i|
      if i.name == name
        i
      else
        Artist.new(name)
      end
    }
  end
  
  def print_songs 
    @songs.each {|i| puts i.name}
  end
  
  def self.all 
    @@all
  end
end