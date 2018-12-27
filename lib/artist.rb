class Artist 
  attr_accessor :name
  
  
  @@all = [ ]
 
  def self.all 
    @@all 
  end
  
  def initialize(name)
    @name = name
    @songs = [ ]
  end
  
  def songs 
    @songs
  end
  
  def add_song(song)
    @songs << song 
    song.artist = self
  end
  
  def save
    @@all << self
  end
  
  def self.create_by_name(name)
    artist = self.new(name) #must pass in a name here 
                            #(and not give it a name on the next line)
                            #because initialize method takes a name argument
    artist.save
    artist
  end
  
  def self.find_by_name(name)
    self.all.find {|artist| artist.name == name}
  end
    
  def self.find_or_create_by_name(name)
   self.find_by_name(name) || self.create_by_name(name)
  end
    # if self.find_by_name(name)
    #   self.find_by_name(name)
    # else 
    #   self.create_by_name(name)
    # end
  
  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
  
  
end