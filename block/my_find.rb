class Array
	def my_find
		self.each do |i|
			return i if yield(i)
		end
		return nil
	end

	def my_find1
		self.each do |i|
			return i if i > 10
		end
		return nil
	end
end


puts [9, 10, 11, 12, 13, 14, 15, 16].my_find{|x| x > 10}

puts [9, 10, 11, 12, 13, 14, 15, 16].my_find1