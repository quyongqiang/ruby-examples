class MyClass
  def my_method
    @v = 1
  end
end

obj = MyClass.new
p obj.class
p obj.instance_variables


p obj.my_method
p obj.instance_variables

p obj.methods

p MyClass.instance_methods

MyClass.class
MyClass.superclass


# 