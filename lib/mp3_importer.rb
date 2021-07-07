require 'pry'
class MP3Importer
  
  attr_accessor :path
  
  def initialize(filepath)
    @path = filepath
    @files = []
  end
  
  def files
    testPath = Dir.entries("spec/fixtures/mp3s")
    testPath.each do |i|
      if i.split('').last(4) == '.mp3'.split('')
        @files << i.strip
      end
    end
    @files
  end
  
  def import
    self.files.each do |i|
      Song.new_by_filename(i)
    end
  end
end