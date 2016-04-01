class HelloWorld
  attr_accessor :name

  def initialize(name)
 #   self.name = name
  #  @name = name
    #name = name
 #  this in java or c++
 #   this.name = name
  end
  

  def greet
    puts "Hi, I am #{self.name}"
    puts "Hi, I am #{name}"
    puts "Hi, I am #{@name}"
  end
end


h1 = HelloWorld.new("lily")
h1.greet