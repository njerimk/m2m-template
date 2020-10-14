
require_relative '../config/environment.rb'
require 'pry'
#Students
legoshi = Student.new("Legoshi", "gray wolf", "10th Grade")
haru = Student.new("Haru", "white dwarf rabbit", "11th Grade")
louis = Student.new("Louis", "red deer", "11th Grade")
juno = Student.new("Juno", "gray wolf", "9th Grade")
jack = Student.new("Jack", "labrador retriever", "10th Grade")
bill = Student.new("Bill", "bengal tiger", "10th Grade")
collot = Student.new("Collot", "sheep dog", "10th Grade")
sanu = Student.new("Sanu", "pelican", "10th Grade")




#Club
drama_club = Club.new("Drama Club")
sports_club = Club.new("Sports Club")
gardening_club = Club.new("Gardening Club")

#Membership
puts member1 = Membership.new(legoshi,drama_club)
puts louis.new_membership(drama_club)
puts legoshi.new_membership(gardening_club)

binding.pry
puts "hello"





