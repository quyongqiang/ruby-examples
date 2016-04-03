class Point
  attr_accessor :x, :y
  @@t = 10

  def initialize(x, y)
    @x = x
    @y = y
  end

  def inspect
    "(#{@x},#{@y})"
  end

  def to_s
    "(#{@x},#{@y})"
    
  end



  def +(other)
    # the same result, if x not defined as a local var.
    # if x not a local var, x will be @x
    x = 4

    self.class.new(x+other.x, y+other.y)
#    self.class.new(@x+other.x, @y+other.y)
  end

  def -(other)
    self.class.new(x-other.x, y-other.y)

    # the same result to above
 #   Ponit.new(x-other.x, y-other.y)
  end

  def and(other)
    self.class.new(x*2+other.x, 2*y+other.y)
  end

  def get_x
    x = 10
    x
  end


  def get_y
    y
  end

end


p1 = Point.new(1, 2)
p2 = Point.new(1, 3)


p p1.to_s
p p2.to_s

p p1.x

p (p1 + p2).to_s
p (p1 - p2).to_s

# in `<main>': undefined method `*' for #<Point:0x007f8f1383dc50 @x=1, @y=2> (NoMethodError)
# p (p1 * p2).to_s


p p1.get_x
p p1.get_y
p p1.inspect


# not right
p (p1 and p2)

p (p1.and p2)

