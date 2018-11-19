class Artist
  
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    save
  end
  
  def add_song(song)
    @songs << song
  end
  
  def save
    @@all << self
  end
  
  def print_songs
    @songs.each { |song| puts song.name }
  end
  
  # Class methods
  
  def self.all
    @@all
  end
  
  def self.find_by_name(name)
    @@all.find { |artist| artist.name == name }
  end
  
  
  def self.find_or_create_by_name(name)
    find_by_name(name) || self.new(name)
  end
  
end