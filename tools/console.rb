
require_relative '../config/environment.rb'
require 'pry'
#Students
legoshi = Student.new("Legoshi", "gray wolf", "10th Grade")
haru = Student.new("Haru", "white dwarf rabbit", "11th Grade")
louis = Student.new("Louis", "red deer", "11th Grade")
juno = Student.new("Juno", "gray wolf", "9th Grade")
jack = Student.new("Jack", "sheep dog", "10th Grade")
bill = Student.new("Bill", "sheep dog", "10th Grade")
collot = Student.new("Collot", "sheep dog", "10th Grade")
sanu = Student.new("Sanu", "gray wolf", "10th Grade")
mizuchi = Student.new("Mizuchi", "white dwarf rabbit", "11th Grade")




#Club
drama_club = Club.new("Drama Club")
sports_club = Club.new("Sports Club")
gardening_club = Club.new("Gardening Club")

#Membership
puts legoshi.new_membership(drama_club)
puts louis.new_membership(drama_club)
puts legoshi.new_membership(gardening_club)
puts haru.new_membership(gardening_club)
puts juno.new_membership(drama_club)
puts sanu.new_membership(drama_club)
puts jack.new_membership(sports_club)
puts collot.new_membership(sports_club)
puts sanu.new_membership(sports_club)
puts mizuchi.new_membership(sports_club)
puts mizuchi.new_membership(gardening_club)
binding.pry
puts "hello"





