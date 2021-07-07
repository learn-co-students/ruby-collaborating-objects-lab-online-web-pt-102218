# parse all filenames ans send to Song 

class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end 
    
    # Song.
    
  def files 
    @files = Dir.entries(path).grep(/.*\.mp3/)
      # .grep returns a new array listing the elements requested/passed through the block aka .mp3
      #this is how you import a file to a directory
  end 
    
  def import 
    self.files.each{|file| Song.new_by_filename(file)}
      # sending the filenames to Song, which creates a new array 
  end 
end 
    


# Alts provided by cohort lead 

# .map{|f| f.gsub("#{self.path}/", "")}
# g sub is substititue 

# oR 

# f.split(self.path + "/")[1]
# .strip takes out the spaces 