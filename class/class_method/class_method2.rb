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
class HelloWorld
  class << self
    def hello(name)
      puts "#{name} said hello"
    end
  end
end

h = HelloWorld.new("lily")
h.greet

HelloWorld.hello("ruby")
