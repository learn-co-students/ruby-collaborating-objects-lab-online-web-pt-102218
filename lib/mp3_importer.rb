class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
    
  end
  
  def files 
    @files = Dir.entries(@path).select{|file| file.include?(".mp3")}
    @files
  end
  
  def import
    files.each do |file_name|
      song = Song.new_by_filename(file_name)
    end
  end
end