#---
# Excerpted from "Metaprogramming Ruby: Program Like the Ruby Pros",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ppmetr for more book information.
#---
class MyClass
  # The current class is now MyClass...
  def my_method
    # ...so this is an instance method of MyClass
  end
end

class MyClass
  def method_one
    def method_two; 'Hello!'; end
  end
end

obj = MyClass.new
obj.method_one
obj.method_two   # => "Hello!"
