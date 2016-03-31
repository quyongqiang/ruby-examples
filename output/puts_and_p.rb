class Stu
  attr_accessor :name
  attr_accessor :age
  Version = "1.0"

  def to_s
    puts "name:#{@name}, age:#{@age}"
  end
end


s1 = Stu::new
s1.name = "lily"
s1.age = 14

p "p s1:", s1
puts "puts s1:", s1