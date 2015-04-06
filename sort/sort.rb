str1 = "Ruby is an object oriented programing language"

# create array or list.
s1 = str1.split
p s1

# sort. 
s2 = s1.sort
p s2

# sort, ignore case.
s3 = s1.sort do |a, b|
  a.downcase <=> b.downcase
end
p s3
