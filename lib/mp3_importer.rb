require "pry"

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

def files
  @filenames = Dir.glob('./spec/fixtures/mp3s/*')
  @filenames.map do |file|
    file.split("./spec/fixtures/mp3s/")[1]
  end
end

def import
  files.each {|filename| Song.new_by_filename(filename) }
  end
end
