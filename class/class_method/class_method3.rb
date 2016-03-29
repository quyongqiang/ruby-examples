class HelloWorld
  attr_accessor :name
  def initialize(name)
    @name = name
  end

  def greet
    puts "Hi, I am #{self.name}"
  end
end


# class method
def HelloWorld.hello(name)
  puts "#{name} said hello"
  
end

h = HelloWorld.new("lily")
h.greet

HelloWorld.hello("ruby")
