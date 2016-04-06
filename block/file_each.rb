file = File.open("sample.txt")
file.each_line do |line|
  print line
end

file.close


# each_byte
# each_char
# each_...
# 