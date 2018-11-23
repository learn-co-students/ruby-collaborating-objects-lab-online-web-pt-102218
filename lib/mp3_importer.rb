class MP3Importer

    attr_accessor :path

    def initialize(path)
        @path=path
    end

    def files
        @@files=Dir[@path+"/*"]
        @@files.map{|x|    
        x.split('/').last}
    end

    def import 
        self.files.each{|x| 
        Song.new_by_filename(x.split('/').last)
        }
    end
end