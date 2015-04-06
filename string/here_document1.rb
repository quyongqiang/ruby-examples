10.times do |i|
  10.times do |j|
    print (<<"EOB")
      i: #{i}
      j: #{j}
      i*j = #{i*j}
EOB
  end
end
