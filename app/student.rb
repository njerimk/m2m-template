class Student
     attr_accessor :name, :grade, :species
     @@all =[]
 
     def initialize(name, species, grade)
         @name = name
         @species = species
         @grade = grade
         @@all << self 
     end
 
     def self.all
         @@all
     end
 
     def new_membership(club)
       Membership.new(self, club) 
     end

     def clubs
        #legoshi.clubs 
        #return the clubs he belongs to
        Membership.all.select do |each_membership|
            each_membership.student == self
        end.map do |self_memberships|
            self_memberships.club.name
        end
     end
 
 end