# object.method(args) do |block_variable|
# 	loop code
# end


# object.method(args) {|block_variable|
# 	loop code
# }


[1, 2, 3, 4, 5].each do |i|
  puts i ** 2
end

arr = [1, 2, 3]
arr.each_with_index { |obj, idx|  
  p [obj, idx]
}


