class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
    @files = [ ]
  end
  
  def files
    Dir.new(path).each do |file|
      if file.length > 4  #does this have to do with the
                          #"only mp3s" requirement?
        @files << file
      end
    end
    @files
  end
  
  def import
    self.files.each do |filename|
      Song.new_by_filename(filename)
    end
  end
  
  
end