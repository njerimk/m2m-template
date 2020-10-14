class Club
    @@all = []
    attr_accessor :name
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_membership(student)
        Membership.new(student, self)
    end
    

end
