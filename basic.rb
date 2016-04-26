Array.methods

irb(main):029:0* Array.methods.grep /^re/
=> [:remove_class_variable, :remove_instance_variable, :respond_to?]
irb(main):030:0>
irb(main):031:0* [].methods.grep /^re/
=> [:reverse_each, :reverse, :reverse!, :reject, :reject!, 
  :replace, :repeated_permutation, :repeated_combination, 
  :reduce, :remove_instance_variable, :respond_to?]

http://rack.github.io/