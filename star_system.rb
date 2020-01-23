class StarSystem
  attr_reader :name, :planets

def initialize(name, planets)
  @name = name
  @planets = planets
end

def planet_names
  @planets.map{|planet|  planet.name}
end

def get_planet_by_name(planet_name)
  result = @planets.find{|planet| planet.name == planet_name}
  # p result
end

def get_largest_planet
@planets.max{|current_planet,next_planet|current_planet.diameter <=> next_planet.diameter }
end

def get_smallest_planet
@planets.min{|current_planet,next_planet|current_planet.diameter <=> next_planet.diameter }
end

def get_planets_with_no_moons
  @planets.find_all{|planet| planet.number_of_moons == 0}
end

def get_planets_with_more_moons(number_of_moons)
found_planets = @planets.find_all{|planet|planet.number_of_moons > number_of_moons}
return found_planets.map {|planet| planet.name}
end

def get_number_of_planets_closer_than(sun_distance)
found_planets = @planets.find_all{|planet|planet.distance_from_sun < sun_distance}
found_closer_planets_to_sun= found_planets.map {|planet| planet.distance_from_sun}
return found_closer_planets_to_sun.length
end

end
