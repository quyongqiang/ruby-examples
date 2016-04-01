class Person
  attr_accessor :fname
  attr_accessor :lname
  attr_accessor :age

  # class variable
  @@haircolors = ['black', 'brown', 'blonde', 'purple', 'red']
  Var = 1

  # class method
  def self.haircolors
    @@haircolors
  end

  def initialize(f, l, a)
    @fname = f
    @lname = l
    @age = a
  end

  def to_s
    "#{@fname} #{@lname}, age #{@age}"
  end

  def over_the_hill?
    return false if @age < 40
    true
  end
end


p = Person.new("Brian", "Hoke", 44)
puts p

puts Person.haircolors
puts Person::Var
Person::Var = 2
puts Person::Var
