require './A.rb'

a = A.new("maxwell", 30)
p a.get_name
p a.get_age

p a.@age

#b = A.new("maxwell", "30")
#p b.get_name
#p b.get_age
