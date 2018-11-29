require 'pry'

class Artist 
  
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name 
    @song = []
    
  end 
  
  def add_song(song)
    @song << song
    
  end 
  
  def songs
    @song
  end 
  
  def save
    @@all << self 
  
  end 
  
  def self.all
    @@all 
  end 
  
  def self.find_or_create_by_name(name)
      @@all.find do |i| 
        if i.name = name 
          i
        else 
          self.new(name)
      end 
    end 
          
  end 
  
  def print_songs
    @song.each do |i|
     puts i.name
    end
  end 
  
end