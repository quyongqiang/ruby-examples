class A
  def A.a
    puts "class method a"
  end

  def b
    puts "instance method"
  end
end

A.a
A.new.b
