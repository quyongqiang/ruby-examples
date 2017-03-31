def true_or_fasle(value)
  if value
    puts 'True'
  else
    puts 'False'
  end
end

true_or_fasle(nil)   # 'False'
true_or_fasle('some string')   # 'True'
