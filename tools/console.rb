require_relative '../config/environment.rb'

# create test data/variables here
#Artist Class
kaleo = Artist.new("Kaleo")
fleet_foxes = Artist.new("Fleet Foxes")
tlc = Artist.new("TLC")
britney_spears = Artist.new("Britney Spears")
nao = Artist.new("Nao")
charlotte = Artist.new("Charlotte Wilson")
kaytranada = Artist.new("Kaytranada")

#Mixtape Class
mix_1 = Mixtape.new("Folk You", "Indie/Folk")
mix_2 = Mixtape.new("No Scrubs", "Pop/90s")
mix_3  = Mixtape.new("Galaxy Tears", "Dark R&B")

#Song Class
way_down = Song.new("Way Down We Go", kaleo, mix_1)
save_yourself = Song.new("Save Yourself", kaleo, mix_1)
mykonos = Song.new("Mykonos", fleet_foxes, mix_1)
montezuma = Song.new("Montezuma", fleet_foxes, mix_1)
unpretty = Song.new("Unpretty", tlc, mix_3)
lucky = Song.new("Lucky", britney_spears, mix_2)
creep = Song.new("Creep", tlc, mix_2)
orbit = Song.new("Orbit", nao, mix_3)
drive = Song.new("Drive/Disconnect", nao, mix_3)
let_you = Song.new("Let You Down", charlotte, mix_3)
mountain = Song.new("Mountain", charlotte, mix_3)
chances = Song.new("Chances", kaytranada, mix_3)
together = Song.new("Together", kaytranada, mix_2)

puts "Artist knows his name"
puts kaleo.name == "Kaleo"

puts "Mixtape knows its name"
puts mix_2.name == "No Scrubs"
puts mix_3.theme == "Dark R&B"

puts "Song knows its name, artist and mixtape"
puts mykonos.title == "Mykonos" 
puts creep.artist == tlc
puts drive.mixtape == mix_3

puts "Song class knows all the songs"
puts Song.all.include?(mountain)
puts Song.all.include?(let_you)

puts Mixtape.mixtapesongs(mix_1)
#binding.pry