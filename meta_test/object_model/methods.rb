require './my_class.rb'

class MySubclass

end


MyClass.methods.grep /to/

obj = MyClass.new
obj.instance_variable_set("@x", 3)
p obj.instance_variables


MyClass.class 

MyClass.superclass

MyClass.superclass.superclass

MySubclass.ancestors


obj1 = MySubclass.new
p self
p "MySubclass ancestors:", MySubclass.ancestors

Kernel.private_instance_methods

p self
