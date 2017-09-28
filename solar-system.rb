class System
  def initialize(name)
    @name = name
    @bodies = []
  end

  def bodies
    @bodies
  end

  def add_planet(name, size, day, year)
    new_body = Planet.new(name, size, day, year)
    @bodies << new_body
    new_body
  end

  def add_star(name, size, type)
    new_body = Star.new(name, size, type)
    @bodies << new_body
    new_body
  end

  def add_moon(name, size, month, planet)
    new_body = Moon.new(name, size, month, planet)
    @bodies << new_body
    new_body
  end

end


class Body
  @@bodies =[]
  def initialize(name, size)
    @name = name
    @size = size
    @@bodies << self
  end

  def self.bodies
    @@bodies
  end

  def size
    @size
  end

  def self.galatic_mass
    total_mass = 0
    @@bodies.each do |body|
      mass = body.size
      total_mass +=mass
    end
    total_mass
  end

end



class Planet < Body
  @@planets = []
  def initialize (name, size, day, year)
    super(name, size)
    @day = day
    @year = year
    @@planets << self
  end

  def self.all
    @@planets
  end
end



class Star < Body
  @@stars = []
  def initialize (name, size, type)
    super(name, size)
    @type = type
    @@stars << self
  end
end



class Moon < Body
  @@moons = []
  def initialize (name, size, month, planet)
    super(name, size)
    @month = month
    @planet = planet
    @@moons << self
  end
end


solar_system = System.new('Miky Way')
solar_system.add_star('Sun', 1000, 'G-type')

puts solar_system.bodies.inspect

solar_system.add_planet("Earth", 10, 24, 365)
puts solar_system.bodies.inspect

solar_system.add_moon("Moon", 1, 2, solar_system.bodies[1])
puts solar_system.bodies.inspect

puts Planet.all


alpha_system = System.new("Alpha Centuri")
alpha_system.add_star("Alpha Sun", 2000, "S-Type")

puts alpha_system.bodies.inspect
alpha_system.add_planet("Alpha Earth", 12, 20, 20)
alpha_system.add_moon("Alpha Moon", 3, 2, alpha_system.bodies[1])
puts alpha_system.bodies.inspect

puts Body.bodies
puts Body.galatic_mass
