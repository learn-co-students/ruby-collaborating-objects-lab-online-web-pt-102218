class Song

  attr_accessor :name, :artist

  def initialize(name)
    self.name = name
  end

  def self.new_by_filename(filename)
    info = filename.split(%r{\s*[-.]\s*})
    new_song = Song.new(info[1])
    Artist.find_or_create_by_name(info[0]).add_song(new_song)
    new_song
  end

end
