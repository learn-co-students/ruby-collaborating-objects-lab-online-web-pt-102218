class MP3Importer

  attr_accessor :path

  def initialize(path)
    self.path = path
  end

  def files
    files = Dir["#{self.path}/*.mp3"]
    filenames = files.map do |files_with_path|
      f = files_with_path.split (%r{[\/]})
      f[4]
    end
  end

  def import
    self.files.each do |filename|
      Song.new_by_filename(filename)
    end
  end

end
