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

    def members
        Membership.all.select do |each_member|
            each_member.club == self
        end.map do |self_member| 
            self_member.student
        end
    end

    def species
        self.members.map do |each_member|
            each_member.species
        end
    end

    def same_species(species) 
        self.members.select do |each_membership|
            each_membership.species == species
        end
    end

    # def same_species
    #    Membership.all.select do |each_membership|
    #         each_membership.members
    #     end
    # end

  

    

end
