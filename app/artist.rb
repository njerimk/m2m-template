class Artist

    attr_accessor :name
    @@all = []

   def initialize(name)
        @name = name
        @@all << self
   end

   def self.all
        @@all
   end

   def songs 
        Song.all.select do |each_song| each_song.artist == self
    #returns array of songs artist has made
        end
   end

   def mixtapes
        x = self.songs.map do |each_song| each_song.mixtape
        end#returns array of mixtapes artists are on
   end
   
   def themes
        self.mixtapes.map do |mixtape| mixtape.theme
        end
        #returns themes that artist is related to on each mixtape
   end
    
   


end