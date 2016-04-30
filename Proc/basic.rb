#
hello1 = Proc.new do |name|
  puts "Hello #{name}"
end

hello1.call("world")


#
hello2 = proc do |name|
  puts "Hello #{name}"
end

hello2.call("ruby")


# 3
leap = Proc.new do |year|
  year % 4 == 0 && year % 100 != 0 || year % 400 == 0
end

p leap.call(2000)
p leap[2013]
# function call
p leap[2012]


# 4
# 
