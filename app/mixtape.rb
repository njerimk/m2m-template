class Mixtape

    attr_accessor :name, :theme

    @@all = []

    def initialize(name,theme)
        @name = name 
        @theme = theme
        @@all << self
    end

    def self.all 
        @@all
    end

    def songs
        Song.all.select do |each_song| each_song.mixtape == self
        end
        #returns array of all song objects
    end

    def mixtapesongs
        self.songs.map do |each_song| each_song.title
        #array of songs on a specific mixtape
        end
    end

    def mixtapeartists
        self.songs.map do |each_song| each_song.artist.name
        end
    end

end