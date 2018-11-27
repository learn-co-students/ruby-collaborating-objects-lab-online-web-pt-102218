class MP3Importer

  attr_accessor :path

  attr_reader :path


  def initialize(path)
    @path = path
  end

  def files
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |filename| filename.gsub("#{path}/", "") }
  end

  def import
    self.files.each do |filename|
      Song.new_by_filename(filename)
    end
    
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |filename| filename.gsub("#{path}/", "") }
  end


  def import
    files.each{|filename| Song.new_by_filename(filename)}

  end
end