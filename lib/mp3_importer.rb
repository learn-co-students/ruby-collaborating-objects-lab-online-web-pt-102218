class MP3Importer

  attr_accessor :path, :filename

  def initialize(path)
    @path = path
  end

def files
  binding.pry
  Dir.chdir(@path)
  filename = Dir.glob("*.mp3")
end

def import(filename)

  Song.new_by_filename(some_filename)

end


end
