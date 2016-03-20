# local var - _name
# global var - $name
# instance var - @name
# class var - @@name

class HelloWorld
  hello = "this class var: hello"
  @@world = "this class var: world"

  attr_accessor :hello


  def test1
    # local variable
    hello = "this is local var"
    # instance var
    # 
    self.hello = "this is instance var"

    puts hello
    puts self.hello
#    puts @@hello
    puts @@world
  end
  
end




h1 = HelloWorld.new


h1.test1
puts HelloWorld.@@world




