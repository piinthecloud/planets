class SolarSystem
  attr_accessor :planets, :formation

  def initialize
    @planets = []
    @formation = 4600000000
  end

  def add_planet(planetsarray)
    planetsarray.each do |planetsinloop|
      @planets << Planet.new(planetsinloop)
      # puts planetsinloop.values
      # puts "*" * 80
    end
  end

#prints planet names
  def planet_names
    @planets.each do |planet|
      puts planet.name
    end
  end

  def planet_age
    @planets.each do |planet|
      # puts planet.name
      puts @formation / planet.rotation
    end
  end


  class Planet
    attr_accessor :name, :distance, :rotation, :satellites

    def initialize(planetstats)
      @name = planetstats[:name]
      @distance = planetstats[:distance]
      @rotation = planetstats[:rotation]
      @satellites = planetstats[:satellites]
    end

    def distance_between(planet2)
      @distance - (planet2).distance
    end
  end
end



planets = [
  {name: "Mercurio", distance: 0.39, rotation: 88, satellites: 0},
  {name: "Venus", distance: 0.72, rotation: 224, satellites:0},
  {name: "Tierra", distance: 1, rotation: 365, satellites: 1},
  {name: "Marte", distance: 1.52, rotation: 686, satellites: 2},
  {name: "Jupiter", distance: 5.20, rotation: 4331, satellites:66},
  {name: "Saturno", distance: 9.54, rotation: 10832, satellites:62},
  {name: "Urano", distance: 19.2, rotation: 30799, satellites: 27},
  {name: "Neptuno", distance: 30.06, rotation: 60190, satellites: 13}
]


mysolarsystem = SolarSystem.new
mysolarsystem.add_planet(planets)

puts mysolarsystem.planets[1].distance_between(mysolarsystem.planets[5])

puts "What planet do you want to see?"
#prints planet names
mysolarsystem.planet_names
puts "*" * 80
nameinput = gets.chomp
puts "-" * 80

puts "What do you want to know about it? \nDistance \nRotation \nSatellites"
puts "*" * 80
#makes user input a symbol so that it can be used as a key for the planet information
infoinput = gets.chomp.downcase.to_sym
puts "-" * 80

#cycles through planets, checks if name matches any planet on the list, then puts the information that the user requested.
planets.each do |planet|
  if planet[:name] == nameinput.capitalize
    puts planet[infoinput]
  end
end

# if nameinput == "mercurio"
#   puts planets[0][infoinput]
# elsif nameinput == "venus"
#   puts planets[1][infoinput]
# elsif nameinput == "tierra"
#   puts planets[2][infoinput]
# elsif nameinput == "marte"
#   puts planets[3][infoinput]
# elsif nameinput == "jupiter"
#   puts planets[4][infoinput]
# elsif nameinput == "saturno"
#   puts planets[5][infoinput]
# elsif nameinput == "urano"
#   puts planets[6][infoinput]
# elsif nameinput == "neptuno"
#   puts planets[7][infoinput]
# end
#


















#
