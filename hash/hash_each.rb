sum = 0
sum1 = 0



outcome = { 参加费: 1000, 挂件费用: 1000, :"联欢会费用" => 1000 , "联欢会费用" => 1000, :其他费用 => 1000, :fee => 1000}


outcome.each do |pair|
  sum += pair[1]
end
puts "合计：#{sum}"


outcome.each do |item, price|
  p "#{item}, #{price}"
  sum1 += price
end
puts "合计：#{sum1}"


  



