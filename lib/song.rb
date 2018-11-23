class Song
    attr_accessor :name, :artist
    def initialize(name)
        @name=name
    end

    def self.new_by_filename(file_name)
        file_name = file_name.split('.')[0]
        new_song = Song.new(file_name.split(' - ')[1])
        #puts new_song.name
        #puts file_name.split(' - ')[0]
        new_song.artist = Artist.find_or_create_by_name(file_name.split(' - ')[0])
        artist = Artist.find_or_create_by_name(file_name.split(' - ')[0])
        artist.add_song(new_song)
        artist.save
        #binding.pry
        new_song
    end

end