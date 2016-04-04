def foo
  File.open("/no/file")
end

def bar
  foo()
end

begin
  bar()
rescue Exception => ex
  print ex.message, "\n"

end



