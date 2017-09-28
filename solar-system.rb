class System
@@bodies = []

def bodies
  @@bodies
end

def add
  new_body =
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

end

class Star < Body

end

class Moon < Body

end
