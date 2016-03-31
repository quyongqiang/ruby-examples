class HelloWorld
  attr_accessor :name

  def initialize()
    name = "init"
    @name = "init1"
  end
  

  def greet
    puts "Hi, I am #{self.name}"
    puts "Hi, I am #{name}"
    puts "Hi, I am #{@name}"
    
  end

end

# test 1
h1 = HelloWorld.new
h1.greet
h1.name="lily"
h1.greet




class HelloWorld
  def test_name
    name = "ruby"
	@name = "@lucy"
    self.name = "self_lucy"
	name = "ruby"
  end

end

# test2 
puts ""
h1.greet


# test 3
puts ""
h1.test_name
h1.greet
puts h1.name
