def math(a, b)
  yield(a, b)
end

def teach_math(x, y, &op)
  puts "call math"
  math(x, y, &op)
end


puts teach_math(2, 4) {|x, y| x * y }