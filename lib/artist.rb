class Artist
    
    attr_accessor :name, :songs

    @@all = []

    def initialize(name)
        @name=name
        @songs=[]
        
    end

    def self.find_or_create_by_name(name)
        if @@all.find{|x| x.name==name}
            @@all.find{|x| x.name==name}
        else
            Artist.new(name)
        end
    end

    def add_song(song)
        @songs.push(song)
    end

    def save
        @@all.push(self)
    end

    def self.all
        @@all
    end

    def print_songs
        @songs.each{|song| puts song.name}
    end

end