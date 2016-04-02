class Greeting
  attr_accessor :a
  # class var
  A = 1
  
  @@c_var = 9
  def Greeting.c_var
    @@c_var
  end
  def initialize(text)
    @text = text

  end
  def welcome
    @text
  end


  
  def a
    @a
  end
  

end
my_object = Greeting.new("Hello")


#p my_object.a
p Greeting::A
p Greeting.c_var
p my_object.class                             # => Greeting
p my_object.class.instance_methods(false)     # => [:welcome]
p my_object.instance_variables                # => [:@text]
