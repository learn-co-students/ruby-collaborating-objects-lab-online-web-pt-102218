require "pry"

class MP3Importer

  attr_accessor :path, :filename


  def initialize(path)
    @path = path
    #@list_of_files = []
  end

def files
  #binding.pry
  filenames = Dir.glob('./spec/fixtures/mp3s/*')
  filenames.map do |file|
    file.split("./spec/fixtures/mp3s/")[1]
  end
end

def import(filenames)


end


end
