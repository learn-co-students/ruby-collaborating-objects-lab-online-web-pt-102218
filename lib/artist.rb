require "pry"

class Artist

  attr_accessor :name, :song
  @@songs = []

  def initialize(name)
    @name = name
  end

  #def add_song(song)
  #  @@songs << song
  #  song.artist = self
  #end

end
