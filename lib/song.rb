require 'pry'
class Song 
  
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name 
    
  end 
  
  def self.new_by_filename(filename)
    song = Song.new(filename)
    song.name = filename.split(/[-]/)[1].strip
    song.artist = Artist.new(filename.split(/[-]/)[0].strip)
    song.artist.save
    song.artist.add_song(song)
    song
    
  end 

  
end 