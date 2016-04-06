arr = [1, 3, 2]
lan = ["ruby", "python", "perl", "cpp"]


p arr.sort

p lan.sort


call_num = 0
arr_sorted = arr.sort do |a, b|
  call_num += 1
	a <=> b
end

p arr_sorted
puts "call_num:", call_num




lan_sorted = lan.sort do |a, b|
  a.length <=> b.length
end

p lan_sorted


ruby_is = %w(A dynamic, open source programming language with a focus on simplicity and productivity. It has an elegant syntax that is natural to read and easy to write.)

p ruby_is
ruby_is_sorted =  ruby_is.sort_by{|item| item.length }

p ruby_is_sorted