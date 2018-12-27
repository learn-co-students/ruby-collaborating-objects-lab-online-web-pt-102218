class Song 
  attr_accessor :name, :artist
  
  @@all = [ ]
  
  def self.all 
    @@all 
  end
  
  def save
    @@all << self
    self
  end
  
  def initialize(name)
    @name= name
  end
  
  def artist_name=(name)              #This is like so you can actually
                                      #associate a song with a real artist instance
                                      #and not just a string
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
  
  def self.new_by_filename(filename)
    artist_name = filename.split(" - ")[0]
    filename = filename.split(" - ")[1]   #you have to do this step
                                          #first before making a new
                                          #song with the filename as 
                                          #the name
    song = self.new(filename)
    song.artist_name = artist_name
    song.save
  end
  
end