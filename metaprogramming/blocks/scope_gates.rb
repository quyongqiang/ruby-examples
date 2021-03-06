#---
# Excerpted from "Metaprogramming Ruby: Program Like the Ruby Pros",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ppmetr for more book information.
#---
v1 = 1                  
class MyClass        # SCOPE GATE: entering class
  v2 = 2                
  local_variables    # => ["v2"]
  def my_method      # SCOPE GATE: entering def
    v3 = 3
    p local_variables
  end                # SCOPE GATE: leaving def
  local_variables    # => ["v2"]
end                  # SCOPE GATE: leaving class

obj = MyClass.new
p obj.my_method        # => [:v3]
p obj.my_method        # => [:v3]
p local_variables      # => [:v1, :obj]
