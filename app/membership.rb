class Membership
    @@all = []

    attr_accessor :student, :club

    def initialize(student,club)
        @student = student
        @club = club
        @@all << self
    end

    def self.all
        @@all
    end 

    

end
