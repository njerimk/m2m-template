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
            self_memberships.club
        end
     end

     def same_clubs(club)
        Membership.all.select do |each_membership|
            each_membership.club == club
            each_membership.name
        end
    end
     #species method for student 
     #names of students in club of the same species as self.species
 
        # Student.all.select do |student|
        #     student.species == self.species
        # end  
   

     
 
 end