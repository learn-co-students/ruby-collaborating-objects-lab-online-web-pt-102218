require "pry"

class Artist

  attr_accessor :name, :song
  @@songs = []

  def initialize(name)
    @name = name
  end

  def add_song(song)
    #binding.pry
    @@songs << song
    @@songs
  end

  def save

  end

end
