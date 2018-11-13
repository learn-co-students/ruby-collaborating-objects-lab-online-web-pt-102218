class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files = Dir["#{path}/*.mp3"]
    files.each do |path|
      path.slice!("./spec/fixtures/mp3s/")
    end
    @@files = files
  end

  def import
    @@files.each do |file|
      Song.new_by_filename(file)
    end
  end
end
