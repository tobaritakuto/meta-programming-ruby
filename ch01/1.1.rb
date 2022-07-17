class HelloGalaxy
  def initialize star
    @star = star
  end

  def bright_thing
    @star
  end

end

my_object = HelloGalaxy.new 'sun'
puts my_object.class # => HelloGalaxy
puts my_object.instance_variables # => [:@star]