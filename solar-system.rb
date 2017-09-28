class System
@@bodies = []

def bodies
  @@bodies
end

def add
  new_body = Body.new(name, size)
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
