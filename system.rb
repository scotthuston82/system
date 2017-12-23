class System

  @@bodies = []

  def add(body)
    @@bodies << body
  end

  def total_mass(bodies)
    total = 0
    bodies.each do |body|
      total = total + body
    end
    total
  end

end

class Body < System

  def initialize(name, mass)
    @name = name
    @mass = mass
  end
end

class Stars < Body

  def initialize(type, name, mass)
    super(name)
    super(mass)
    @type = type
  end
end

class Planets < Body

  def initialize(year, day, name, mass)
    @year = year
    @day = day
    super(name)
    super(mass)
  end

end

class Moons  < Body

  def initialize(month, planet,name, mass)
    @month = month
    @planet = planet
    super(name)
    super(mass)
  end
end

sun = Stars.new("g-star", "Sun", 1000000)
p sun
earth = Planet.new(365,24,"earth",1)
p earth
moon = Moons.new(28, earth, "moon", 0.01)
