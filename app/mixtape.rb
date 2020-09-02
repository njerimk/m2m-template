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

    def self.mixtapesongs(mixtape)
        x = Song.all.select do |each_song| each_song.mixtape == mixtape 
        #binding.pry
        end
        #array of songs on a specific mixtape
    end

end