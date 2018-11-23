require "pry"

class MP3Importer

  attr_accessor :path, :filename

  def initialize(path)
    @path = path
    @list_of_files = []
  end

def files
  Dir.chdir(@path)
  filenames = Dir.glob("*.mp3")
  @list_of_files << filenames
binding.pry
end

def import(filenames)


end


end
