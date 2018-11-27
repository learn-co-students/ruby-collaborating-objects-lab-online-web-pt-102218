require "pry"

class Artist

  attr_accessor :name, :song

  def initialize(name)
    @name = name
    @song = []
  end

  def add_song(song)
    self.song = song
    self
  end

  def save

  end

end
