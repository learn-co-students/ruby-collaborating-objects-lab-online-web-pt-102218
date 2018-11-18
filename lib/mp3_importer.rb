class MP3Importer
  attr_accessor :path 
  
  def initialize(path)
    @path = path
  end
  
  def files 
    arr = Dir.entries("./spec/fixtures/mp3s").select {|f| !File.directory? f}
  end
  
  def import 
    files.each do |filename|
      Song.new_by_filename(filename)  
    end 
  end 
end 