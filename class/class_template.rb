$global_var = 1

class Person
  attr_accessor :fname
  attr_accessor :lname
  attr_accessor :age

  # not in init method
  attr_accessor :salary

  # class constant, must start as captial letter
  # p Person::Version
  Version = "1.0"
  

  # class variable
  @@haircolors = ['black', 'brown', 'blonde', 'purple', 'red']
  @@num_of_hands = 2

  # class method , or use def Person.haircolors
  # this self represents current class
  def self.haircolors
    @@haircolors
  end

  def self.num_of_hands
    @@num_of_hands
  end


  def initialize(f, l, a)
    # this self represents current instant
    self.fname = f
    @lname = l
    @age = a
  end


# this hava no sense, also will not be executed.
  @fname = "ruby"

# this can change the value of @fname
  def ch_fname
    @fname = "def ruby"
  end


  def to_s
    "#{@fname} #{@lname}, age #{@age}"
  end

  def over_the_hill?
    return false if @age < 40
    true
  end
end

p Person::Version

puts Person.haircolors

p1 = Person.new("Brian", "Hoke", 44)
puts p1


puts Person.num_of_hands

p1.salary = 10000
p p1.salary

p1.ch_fname
p p1.fname

