class Song

    attr_accessor :title, :artist, :mixtape

    @@all = []

    def initialize(title, artist, mixtape)
        @title = title
        @artist = artist
        @mixtape = mixtape
        @@all << self
    end

    def self.all
        @@all
    end

end