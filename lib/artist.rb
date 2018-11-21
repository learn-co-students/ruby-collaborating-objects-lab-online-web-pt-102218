require "pry"

class Artist

  attr_accessor :name
  @@songs = []

  def initialize(name)
    @name = name
  end

  def add_song(song)
    #binding.pry
    @@songs << song
    song.artist = self

  end

end
