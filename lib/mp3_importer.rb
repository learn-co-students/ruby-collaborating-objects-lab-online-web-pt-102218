
require 'pry'

class MP3Importer 
  
  attr_accessor :path
  @i = []
  
  def initialize(path)
    @path = path 
    
  end 

def files
  new = []
  dir = Dir.entries("./spec/fixtures/mp3s")
  dir.each do |i| 
    if i.split('').last(4) == '.mp3'.split('')
      new << i 
    end 
  end 
  new
end

def import
  dir = Dir.entries("./spec/fixtures/mp3s")
  dir.each do |filename| 
    Song.new_by_filename(filename)
    end
end 
  
  
  
  
end 
  

  
  
  
