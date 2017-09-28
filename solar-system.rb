class System
  @@bodies = []
  def initialize(name)
    @name = name
  end

  def self.bodies
    @@bodies
  end

  def self.add_planet(name, size, day, year)
    new_body = Planet.new(name, size, day, year)
    @@bodies << new_body
    new_body
  end

  def self.add_star(name, size, type)
    new_body = Star.new(name, size, type)
    @@bodies << new_body
    new_body
  end

  def self.add_moon(name, size, month, planet)
    new_body = Moon.new(name, size, month, planet)
    @@bodies << new_body
    new_body
  end

end


class Body
  def initialize(name, size)
    @name = name
    @size = size
  end
end

class Planet < Body
  def initialize (name, size, day, year)
    super(name, size)
    @day = day
    @year = year
  end
end

class Star < Body
  def initialize (name, size, type)
    super(name, size)
    @type = type
  end
end

class Moon < Body
  def initialize (name, size, month, planet)
    super(name, size)
    @month = month
    @planet = planet
  end
end

solar_system = System.new('Miky Way')
System.add_star('Sun', 1000, 'G-type')

puts System.bodies.inspect

System.add_planet("Earth", 10, 24, 365)
puts System.bodies.inspect

System.add_moon("Moon", 1, 2, System.bodies[1])
puts System.bodies.inspect

puts Planet.bodies
