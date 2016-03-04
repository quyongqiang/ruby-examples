def foo(a, b, c)
	a + b + c
end


args1 = [2, 3]

a = foo(1, *args1)
p a
puts a
print a,"\n"
print a

